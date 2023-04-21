#mkdir docs/repos/mkdocs-test
#git clone --branch "master" --depth 1 --sparse https://github.com/jeremiahlsmith/mkdocs-test.git docs/repos/mkdocs-test
#git submodule add -b master https://github.com/jeremiahlsmith/mkdocs-test.git docs/repos/mkdocs-test
git clone --branch master --filter=blob:none --sparse https://github.com/jeremiahlsmith/mkdocs-test.git docs/repos/fruit
cd src/docs/repos/fruit
git sparse-checkout init --cone
git sparse-checkout set docs
cd ../../..
git submodule add -b master https://github.com/jeremiahlsmith/mkdocs-test.git src/docs/repos/fruit


git clone --branch master --filter=blob:none --sparse https://github.com/jeremiahlsmith/mkdocs-test2.git src/docs/repos/veg
cd src/docs/repos/veg
git sparse-checkout init --cone
git sparse-checkout set docs
cd ../../../..
git submodule add -b master https://github.com/jeremiahlsmith/mkdocs-test2.git src/docs/repos/veg


git submodule update --init --recursive --remote
