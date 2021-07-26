#!/bin/sh

# create the output directory (and parents):
mkdir -p www

# get help on the following parameters: «python ./lazyblorg.py --help»

# when setting up your own system, you might want to:
# 1. have separate directories for generating your blog and staging/publishing your blog
# 2. rename everything with «2del» to an appropriate name
# 3. copy generated blog data to staging/publishing directory
# 4. point --previous-metadata to the corresponding pk-file in your staging/publishing directory
# 5. modify --orgfiles so that your org-mode files are parsed
#    don't forget to include your version of «about-placeholder.org» and «blog-format.org»

# --config option is actually kind of useless for known bug when importing custom config module

python3 ./lazyblorg.py \
    --config ./config.py \
    --targetdir www \
    --previous-metadata ./blorg-metadata.pk \
    --new-metadata ./blorg-metadata.pk \
    --logfile ./blorg-logfile.org \
    --orgfiles testdata/test.org \
               ./about-placeholder.org \
               ./template.org $@
#END
