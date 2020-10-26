## JPACRUDProject / Cerebro

### Overview

This is the Week 9 assignment for the Skill Distillery Java Bootcamp.  This assignment is the creation and utilization of a web page to access a MYSQL database for CRUD (Creation, Retrieve Update, Delete) functions.  For this project, a rudimentary superhero database has also been created.

### How to Run

1.  This program will require the use of multiple files to ensure performance.  Please verify that all files, including the database, have been downloaded.

2.  Compile and/or run this Project in a compatible IDE of your choice.  This Project was programmed and compiled in Spring Tool Suite 4, version 4.8.0.

3.  Upon running the Spring Boot project locally, open your preferred web browser and access http://localhost:8082

4.  The website (affectionally known as Cerebro) will greet you with a current list of superheroes in the database.  User will have the option to look up a specific superhero by ID #, or add a Superhero to the database.  

5. Clicking "Add Superhero" redirects User to a page where they may add a Superhero to the database, including any of the following information:

* Superhero name
* Superhero alias (where applicable)
* First appearance of Superhero (in media)
* Superhero's team affiliation(s) (where applicable)
* Superhero's arch nemesis (where applicable)
* Where Superhero is primarily located
* Brief description of Superhero's power(s)

Upon submitting the data, Superhero will be added to the database, along with a message confirming submission if done successfully.  At this time Superhero will be assigned the next-available ID number in the database.

6. Alternatively, inputting a specific ID Number or clicking directly on a Superhero name on the Home Page will forward User to the detail page.  The detail page will provide User with the following information about any particular Superhero:

* Name
* Alias
* First Appearance
* Team Affiliation(s)
* Arch Nemesis
* Primary Location
* Brief Description of Powers

7.  Below the details of the chosen Superhero, User will be given the option to either update the Superhero's listed information, or delete Superhero outright from the database.

8.  On selection of "Update", User will be redirected to a page similar in appearance to the "Add Superhero" page, where they may make any necessary changes to the specific Superhero.  Alternatively, if User selects "Delete", Superhero will be immediately removed.  User will be redirected to a confirmation page if either action was performed successfully.

Please note that upon deletion, Superhero's previous ID will no long be available in the database.

9.  When User is finished with their CRUD functions, they may simply close their browser.

10.  Have fun!

### Topics Covered / Technologies Utilized

* HTML
* Bootstrap
* JSP Expression Language / JTML
* Apache HTTPD Web Server
* SQL/MYSQL
* MYSQL Workbench / MYSQL Database Creation
* JDBC
* Object-Relational Mapping (ORM)
* JPQL
* CRUD (Create, Retrieve, Update, Delete) Operations
* MAMP
* Spring Tool Suite / Spring Web MVC / Spring Boot Integration
* Gradle
* JUnit Jupiter Testing


### Lesson(s) Learned

1. This program provided an opportunity to see all aspects of a full-stack application at work, including server and database technologies required in addition to the Java Runtime Environment.
2. This program provided an opportunity to see how multiple languages (MYSQL/Java/JSP) work in tandem to create a full-stack application.
3. This program showed the necessity of multi-step pre-planning to adequately implement and connect the languages and processes discussed in 1 and 2.
4. This program stressed the utmost importance of utilizing testing and understanding additional problem-solving methods (including online research, exception review, and strategic SysOut placement) to trace, diagnose, and correct functional errors.
