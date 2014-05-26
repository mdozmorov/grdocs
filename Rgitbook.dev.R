require(devtools)
getwd()

# document()
# check_doc()
# install()
# check()
# build()

# devtools::install_github("jbryer/Rgitbook")
require(Rgitbook)
ls('package:Rgitbook') # List the public functions
installGitbook()
gitbookInfo()
checkForGitbook()
newGitbook('website') # This will create a test project

# Build the Gitbook website
buildRmd(clean=TRUE)
buildGitbook('website')
openGitbook()
# publishGitbook('jbryer/Rgitbook')
# 
# # Other formats
# buildGitbook('website', format='pdf')
# buildGitbook('website', format='ebook')
# 
# # Send the package to CRAN
# release()