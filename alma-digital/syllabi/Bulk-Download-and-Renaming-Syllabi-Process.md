# Bulk Download and Renaming Syllabi Process

## Davidson Context

This process was created to export all syllabi after they've been submitted to Alma. This is partly done for pseudo-preservation and so we have all files named more consistently and discoverable for fulfilling admin requests, e.g., program reviews, accreditation, and other projects. This documentation follows a video in the Library Shared Drive.

### Create Set

- Find Collection in Alma
- Copy Collection ID
- Run Advanced Search of Digital Tiles with Collection ID containing pasted Collection ID
- Save and Filter Query as Digital Titles item set

### Run Jobs

- Run Download Digital Titles (files) on set
- Run Export Digital Titles on same set with OAI DC and Dublin Core options in job.
- Download both jobs (`.xml` for Export Digital Titles and `.zip` for Download Digital Titles).

### Python Scripts

- Unzip `.zip` and move folder and `.xml` file to a local folder named `python` before moving it to Google Drive. *Google Drive Syncing creates issues with renaming files, even with syncing paused.*
- Rename the `.xml` file to `matching_fields.xml`
- Edit .py scripts as needed (`python` folder as root and target)
- Run `python3 rename_move.py` in Terminal (Mac)
- Open the `.xml` file and find and replace (remove) all `alma:01DCOLL_INST/bibs/` with empty/null.
- Run `python3 rename_titles.py` in Terminal
- Select all the files (-`matching_fields.xml`) and drag+drop to the appropriate Google Drive folder.
