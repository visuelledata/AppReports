Automated App Reports
---------------------

### Summary:

This repository is a part of a larger project to generate custom reports
for my phone usage.

This repository contains the following items of note: - Custom report
generated using R markdown. - Script to generate the Rmd file and email
it to myself.

### How it works:

1.  **Data collection:** All of the data is collected on my phone using
    a script created on
    [Tasker](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm&hl=en).
    This script logs the time I spend on any app, then uploads it to
    Google Sheets.

2.  **The report:** The report is designed and generated in R as an HTML
    file. You can find the code in this repository.

3.  **Sending:** Every month Tasker runs a script from my phone to turn
    on my PC, then sends a message to the EventGhost (Windows automation
    program). EventGhost then runs a shell command to run the
    [create\_report.R](https://github.com/visuelledata/AppReports/blob/master/create_report.R)
    script. The report is then generated and emailed to using R.
