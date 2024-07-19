# run this file before pushing to github

# formate with prettier
npx prettier --check .
npx prettier --write .

# fix x86 platform problem with boundle
bundle lock --add-platform x86_64-linux