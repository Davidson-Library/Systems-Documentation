# Download and Transform Bulk

Bulk export from Alma and splitting into multiple XML files after XSL transformation is the preferred method as it speeds the process up quite a bit.

#### Create Analysis in Alma Analytics

Click on **Analytics** then **Design Analytics** to open the Oracle Dashbaord.

![Design Analytics link](../Preservica/help\_files/Analytics\_Design.png)

Click on **Catalog** then navigate to the **Alma Digital shared folder** and **click edit** of the analysis titled **"Digital Title Set Creation Template"**

![Catalog and Folder Directory](../Preservica/help\_files/Analytics\_Edit\_Template.png)

It will by default show you the results, so click the **Critera** tab at the top-left. Then **click the gear** next to the "Collection Name" column to apply a filter.

![Criteria Apply Filter](../Preservica/help\_files/Analytics\_Edit\_Filter.png)

Click on the magnifying glass icon to open up the available filter for "Collection Name."

![Search Collection Name Magnifying Glass](../Preservica/help\_files/Analytics\_Edit\_Filter\_Search.png)

**Search for the Collection Name title** and either **double click it** or **click it once** before **clicking the `>`** to populate the "Selected" box with the collection you want to filter for a set. Finally, **click OK twice.**

![Select Collection to Filter](../Preservica/help\_files/Analytics\_Edit\_Filter\_Select.png)

The Filters panel will show the collection name. Once you confirm the collection name, **click Results** to make sure the PIDs are displaying.

![Confirm Collection Name](../Preservica/help\_files/Analytics\_Edit\_Filter\_Confirm.png)

You'll then see a table with PIDs and Collection Names. Now you will **Save As** a new analysis to keep the template empty of filters. Save it as the Collection Name Set, e.g., Irving Bienstock project Set. _This may go into a sub folder of sets?_

![Save As Set](../Preservica/help\_files/Analytics\_Edit\_Filter\_SaveAs\_Set.png)

#### Create Set From Analytics

Now that the collection has been saved as an analysis, you can create a set "From Analytics." Back in Alma, select **Admin** then **Manage Sets**

![Admin Manage Sets](../Preservica/help\_files/Analytics\_Admin\_Manage.png)

**Click Add Set** then **Itemized**

![Add Set](../help\_files/Analytics\_Create\_Set.png)

Give the set a name (probably the name of the collection), **select Digital titles** from the "Set content type" dropdown, and **select From Analytics.** Alma will take a bit to process all the directories in analytics. Now's a good time for a stretch 🙆‍♀️ or coffee :coffee: (seriously).

The folder will default to "Recent reports" and the analysis you just saved doesn't always show up there. **Select** the `Davidson College 01DCOLL_INST/Reports/Alma Digital` folder directory and then the name of the analysis in the field below the folder. **Click Save**. You'll receive an email when the set has be created (usually instantly)

![Set Details](../Preservica/help\_files/Analytics\_Create\_Details.png)

It will now show up as a set under **My Sets**. :tada:

![My Sets](../Preservica/help\_files/Analytics\_Create\_Complete.png)

#### Run "Export Digital Titles" Job

**Click Admin** then **Run a Job**

![Admin Run Job](../Preservica/help\_files/Job\_Run.png)

**Search "export digital"** to narrow down the 100+ jobs. **Select Export Digital Titles** and **click Next**.

![Select Job](../Preservica/help\_files/Job\_Select.png)

**Select the Set** you want to perform the job on and **click Next**.

![Select Set for Job](../Preservica/help\_files/Job\_Select\_Set.png)

**Change** the following parameters:

1. Target format = `OAI DC`
2. Bibliographic reford formats to include = `Dublin Core`

Everything else can be left as is. **Click Next**.

![Job Parameters](../Preservica/help\_files/Job\_Parameters.png)

No need to give the job a name, so **click Submit**. You will receive an email once the job is complete (quick depending on size of collection/set). **Click the History tab** and then the **report link**.

![Job Success](../Preservica/help\_files/Job\_Success.png)

**Click** the "Link to Exported records" link.

![Link to XML](../Preservica/help\_files/Job\_Bibs.png)

**Click the `.xml` bibliographic link** to download the file. It should download to wherever your downloads directory is. Now you can run the XSLT to copy each record from the `.xml` file into individual `.xml` files for ingest to Preservica.

#### Run XSLT Code

* Open both the downloaded DC bib `.xml` file and the [Split\_Single\_to\_Multiple\_XML\_Files.xsl file](../Preservica/Split\_Single\_to\_Multiple\_XML\_Files.xsl) in Oxygen XML Editor.
* Click the XSLT Debugger perspective button ![XSLT Debugger View](../Preservica/help\_files/Rename\_XSLT\_Debugger.png)
* Make sure you have the two files selected (exported `.xml` file and `.xsl` file).
* Select where you want the individual files saved. I'd recommend saving local instead of the Preservica server folder. **Click the "Run to End"** button ![Oxygen Setup](../Preservica/help\_files/XSTL\_Setup2.png)

The files will now appear in the Output directory you selected.

![Files Output](../Preservica/help\_files/XSL\_Output\_Folder.png)

#### Rename XML Files for Media

Since the `.xslt` created single `.xml` files, you now need to rename these to match the media files exactly, with the additional `.metadata`, e.g., `OHI-0357_V_ShowersCharlesO_20220310.mp4.metadata` This is what Preservica requires.

I recommend going back to the XML Editor perspective for a fuller screen of the long `.xml` file.

![Editor View](../Preservica/help\_files/Rename\_XSLT\_Editor.png)

The new list of files e.g., `file1-40.xml` are in the same order as they appear in the main `.xml` file exported from Alma. Scroll through that file to target the newly transformed individual files and match it with the `fileX.xml`. The easiest way is to find the OHI in the `<dc:identifier>` field.

![OHI ID](../Preservica/help\_files/Rename\_OHI\_ID.png)

Copy the file name from one of the media files that match the OHI ID

![Copy file name](../Preservica/help\_files/Rename\_Multi\_Files\_Copy.png)

Rename `fileX.xml` and paste the copied text and edit the `.xml` with `.metadata`

![Paste file name](../Preservica/help\_files/Rename\_Multi\_Files\_Paste.png)

![change xml to metadata](../Preservica/help\_files/Rename\_Multi\_Files\_MetadataXML.png)

Open the newly named `.metadata` file and make sure the `dc:type` matches the media it's for. This is the only `dc` field that will need to be updated. Typical names are:

* V and .mp4 for `MovingImage`
* A and .mp3 or .m4a for `Sound`
* T and .pdf or .doc for `Text`

![type of media](../Preservica/help\_files/Rename\_Multi\_Files\_Type.png)

Once the `dc:type` matches the media file type, **Save As**

![save as screen](../Preservica/help\_files/Rename\_Multi\_Files\_SaveAs.png)

Rename the file (typical examples above). Oxygen Editor will add `.xml` after the `.metadata` so make sure to delete `.xml` as this speeds up the Ingest process in Preservica.

![rename file](../Preservica/help\_files/Rename\_Multi\_Files.png)

If there's one (1) Audio, one (1) Video, and one (1) Transcript media, there should be three (3) metadata files, totalling six (6) files.

![3 metadata files](../Preservica/help\_files/Rename\_3\_Files.png) ![3 media files](../Preservica/help\_files/Rename\_3\_Files\_Media.png)

Continue through the list of transformed `.xml` files from the `.xsl` using this method.
