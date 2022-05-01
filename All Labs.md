<Style>
h1 {
    font-family: Segoe UI Light;
    color: black;
    font-size: 18pt;
}
h2 {
    font-family: Segoe UI Light;
    color: black;
    font-size: 16pt;
}
h3 {
    font-family: Segoe UI Light;
    color: #002060;
    font-size: 14pt;
    font-weight: bold;
}
h4 {
    font-family: Segoe UI Light;
    color: #002060;
    font-size: 12pt;
    font-weight: bold;
}
h5 {
    font-family: Segoe UI Light;
    color: #002060;
    font-size: 12pt;
    font-weight: bold;
}
h6 {
    font-family: Segoe UI Light;
    color: #002060;
    font-size: 12pt;
    font-weight: normal;
}
.module {
    color: #7030A0;
    font-weight: bold;
}
.title {
    color: #00208C;
    font-weight: bold;
}
</style>

# WorkShopPLUS - DevOps Fundamentals
## Lab Guides

### Conditions and Terms of Use
### Microsoft Confidential

This training package is proprietary and confidential, and is intended only for uses described in the training materials. Content and software is provided to you under a Non-Disclosure Agreement and cannot be distributed. Copying or disclosing all or any portion of the content and/or software included in such packages is strictly prohibited.

The contents of this package are for informational and training purposes only and are provided **as is** without warranty of any kind, whether express or implied, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, and non-infringement.

Training package content, including URLs and other Internet Web site references, is subject to change without notice. Because Microsoft must respond to changing market conditions, the content should not be interpreted to be a commitment on the part of Microsoft, and Microsoft cannot guarantee the accuracy of any information presented after the date of publication. Unless otherwise noted, the companies, organizations, products, domain names, e-mail addresses, logos, people, places, and events depicted herein are fictitious, and no association with any real company, organization, product, domain name, e-mail address, logo, person, place, or event is intended or should be inferred.

### Copyright and Trademarks

© 2017 Microsoft Corporation. All rights reserved.

Microsoft may have patents, patent applications, trademarks, copyrights, or other intellectual property rights covering subject matter in this document. Except as expressly provided in written license agreement from Microsoft, the furnishing of this document does not give you any license to these patents, trademarks, copyrights, or other intellectual property.

Complying with all applicable copyright laws is the responsibility of the user. Without limiting the rights under copyright, no part of this document may be reproduced, stored in or introduced into a retrieval system, or transmitted in any form or by any means (electronic, mechanical, photocopying, recording, or otherwise), or for any purpose, without the express written permission of Microsoft Corporation. 

For more information, see Use of Microsoft Copyrighted Content at

[http://www.microsoft.com/en-us/legal/intellectualproperty/Permissions/default.aspx](http://www.microsoft.com/en-us/legal/intellectualproperty/Permissions/default.aspx)

DirectX, Hyper-V, Internet Explorer, Microsoft, Outlook, OneDrive, SQL Server, Windows, Microsoft Azure, Windows PowerShell, Windows Server, Windows Vista, and Zune are either registered trademarks or trademarks of Microsoft Corporation in the United States and/or other countries. Other Microsoft products mentioned herein may be either registered trademarks or trademarks of Microsoft Corporation in the United States and/or other countries. All other trademarks are property of their respective owners.

===
## <span id="0">Table of Contents by Module</span>

#### [Module 1: Agile Planning](#1) 
In this module, you learned how to implement Agile at Scale to promote Aligned Autonomy.  You also learned about implementing a hierarichal backlog with multiple teams supporting alignment and autonomy.

 - [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services) (**120 minutes**)

#### [Module 2: Development & Test](#2) 
In this module, you learned the basics of source control management using Git and Azure DevOps Services.  This has begun to build the foundation of a continuous integration and continuous delivery strategy.  There are many strategies; for this module we are using the Topic Branching strategy and using Tasks on the Sprint Task Board as a trigger when to integrate our code.

 - [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git) (**90 minutes**)
 - [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing) (**90 minutes**)
 - [Lab 4: Feature Flags](#lab-4-feature-flags) (**30 minutes**)

#### [Module 3: Release](#3) 
The build phase of the application lifecycle is about making sure the application is continuously ready *to be* shipped. It is also about making it ready to be shipped by triaging the main branch and keeping the main branch green. Also, the way you build it will depend on how you want to ship it.  In this module we are shipping either the UI or the API independently to the ACR (Azure Container Repository).  Then we use the Infrastructure pipeline to deploy to Ring 0 then Ring 1.

 - [Lab 5: Continuous Integration](#lab-5-continuous-integration) (**60 minutes**)
 - [Lab 6: Continous Delivery](#lab-6-continuous-delivery) (**90 minutes**)

#### [Module 4: Learn](#4) 

In this module we see how validated learned coupled with Feature Flags help with safe deployments, experiments, reduced integration, and the ability to fail fast supporting a hypothesis.  Using validated learnign shortend our OODA cycle and shows us a measurable result of our learning.

  - [Lab 7: Application Monitoring](#lab-7-application-monitoring) (**60 minutes**)

===

# <span class="module" id="1">Module 1</span>: <span class="title">Agile Planning</span>

In this module, you learned how to implement Agile at Scale to promote Aligned Autonomy. You also learned about implementing a hierarichal backlog with multiple teams supporting alignment and autonomy.  The labs presented here will help you understand implementing what you learned in Module 1 using Azure DevOps Services.

### <span id="toc1">Module 1 Table of Contents</span>
 
##### [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)

[Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)  
[Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)  
[Exercise 3: Plan Work Stream Collaboration Flow](#exercise-3-plan-work-stream-collaboration-flow)  
[Exercise 4: Portfolio Planning](#exercise-4-portfolio-planning)  
[Exercise 5: Program Planning](#exercise-5-program-planning)  
[Exercise 6: Feature Team Planning](#exercise-6-feature-team-planning)  
[Exercise 7: Delivery Planning](#exercise-7-delivery-planning)  

===

##### <span class="module">Module 1</span>: <span class="title">Agile Planning</span>
# Lab 1: Agile at Scale using Azure DevOps Services

### Introduction

In this lab, you will learn how to implement Agile at Scale to promote **Aligned Autonomy** using multiple teams mapped to an Area of that team name.  This effectively provides each team with their own Azure Board and backlog while sharing a common iteration across multiple teams.  This is an ideal setup for a project that has multiple feature teams working concurrently on the same project.

### Objectives

After completing this lab, you will be able to:

- Understand the value of Agile at scale.

- Learn how to setup Azure DevOps Services Agile at Scale.

- Realize the value of Agile planning in a DevOps organization.

### Prerequisites

1.  None

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Estimated Time to Complete This Lab

120 minutes

### For More Information

Agile at scale using Azure DevOps Services: [https://docs.microsoft.com/en-us/azure/devops/boards/plans/scaled-agile-framework](https://docs.microsoft.com/en-us/azure/devops/boards/plans/scaled-agile-framework)
[Introduction](#lab-1-introduction)

===

# Exercise 1: Create the Team Project

### Introduction

In this exercise, you will learn how to setup an Azure DevOps Services team project to host your teams' collaboration and intellectual property. The steps in this exercise are usually done once during the setup of a project and are only revisited to update the teams' structure or cadence. This may not be what you do daily, but it is important to understand what's possible for you and your team.

### Objectives

After completing this lab, you will be able to:

- Create team projects and configure them for collaboration.

### Prerequisites

1.  None

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0) 

### Tasks

1. [] Log on to **@lab.VirtualMachine(DevOpsVM).SelectLink** using +++@lab.VirtualMachine(DevOpsVM).Username+++ as the username and +++@lab.VirtualMachine(DevOpsVM).Password+++ as the password.

    >[!hint]To autotype, you may click on the +++text+++ to get your account/password.

1. [] From your Workshop Virtual Machine, Open your browser and navigate to +++http://dev.azure.com+++.

    !IMAGE[module1-exercise1-image1.png](module1-exercise1-image1.png)

1. [] Click on **Start free** to create a new Azure DevOps Services account.

1. [] When presented the **Sign in** page, use +++@lab.CloudPortalCredential(Student1).Username+++ as your username, then click on the **Next** button.

    !IMAGE[module1-exercise1-image2.png](module1-exercise1-image2.png)

1. [] When presented the **Enter password** page, use +++@lab.CloudPortalCredential(Student1).Password+++ for your password, then click on the **Sign in** button.

    !IMAGE[module1-exercise1-image3.png](module1-exercise1-image3.png)

1. [] If you are presented the following window, change Project name to +++temp+++, then click on **Continue**.  You will be redirected to your new Azure DevOps Organization with your new temp project.

    !IMAGE[module1-exercise1-image4.png](module1-exercise1-image4.png)

1. [] If your window looks like the one below, click on the Continue button then in the Create a project to get started window type +++temp+++, choose Private, and click on the Create Project button.

    !IMAGE[module1-exercise1-image5.png](module1-exercise1-image5.png)

    > [!note] The temp project that you created uses the **Basic** process template. In the next steps, we will create a new project using the **Agile** process template.

1. [] Click on the **Azure DevOps** logo at the top-left of the screen.

    !IMAGE[module1-exercise1-image6.png](module1-exercise1-image6.png)

1. [] Click on **+ New project** found at the top-right of the screen.

    !IMAGE[module1-exercise1-image7.png](module1-exercise1-image7.png)

1. [] Enter +++hol+++ as the project name and then click the **Advanced** panel so that you can select the Work Item Process template.  Choose Agile for the Work Item Process template then click on the **Create** button.

    !IMAGE[module1-exercise1-image8.png](module1-exercise1-image8.png)

    >[!knowledge]Optional: Provide a description of your project.  Feel free to use +++hol is the Hands-On-Lab organization for DevOps Fundamentals implementation.+++

1. [] Once the project is created, you will get the following landing screen.

    !IMAGE[module1-exercise1-image9.png](module1-exercise1-image9.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to Exercise 2: Setup Team Structure.

===

# Exercise 2: Setup Team Structure

### Introduction

In this exercise, you will learn how to setup areas, cadences and teams to **support scaling Agile within your organization**. Areas and teams allow you to distribute work across multiple workstreams. Iterations allow you to set up multiple cadence levels to be used by different teams or group of teams.

The following structure represents the organization structure we will implement during this exercise.

!IMAGE[image11-a.png](image11-a.png)

In the example we will implement:

- The portfolio team will plan to use a **half-yearly** cadence and <span style="color:#ED7D31;">**Epics**</span> boards.  The Portfolio Team develops the strategy, then they create the Epics for the strategy.  The Portfolio Team will review Epics with the Product Owner, or Project Manager, and decompose the Epics down to Features and map these to the Product Road Map.

- The program team will plan to use a **3-sprint increment** and <span style="color:#7030A0;">**Features**</span> boards. The Program Team plans their cadence every three sprints, or every nine weeks.  This will be done by creating a Program Increment, or PI, that will contain three sprints.

- The feature team will plan to use a **3-week sprint** and <span style="color:#4472C4;">**Story**</span> boards.  The Feature Team cadence, or sprint, are three weeks long.  Each sprint is three weeks from Monday to the last Friday of the third week.

### Objectives

After completing this lab, you will be able to:

- Setup the foundation of Agile at Scale in Azure DevOps Services.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Expand the left navigation menu, if necessary, found in the bottom-left of the web page.

    !IMAGE[module1-exercise2-image1.png](module1-exercise2-image1.png)

1. [] Click on the **Project Settings** button found in the bottom-left of the web page.

    !IMAGE[module1-exercise2-image2.png](module1-exercise2-image2.png)

1. [] Click on **Project configuration**.

    !IMAGE[module1-exercise2-image3.png](module1-exercise2-image3.png)

1. [] Point to Iteration 1, then click on the ellipses, and click on Edit to rename a Iteration.  Rename the initial iterations as follows:

    **Iteration 1** rename to +++Sprint 1+++
    
    **Iteration 2** rename to +++Sprint 2+++
    
    **Iteration 3** rename to +++Sprint 3+++

    !IMAGE[module1-exercise2-image4.png](module1-exercise2-image4.png)

1. [] Add 3 more sprints: +++Sprint 4+++, +++Sprint 5+++ and +++Sprint 6+++, by selecting the **hol** node and clicking **New child**.

    !IMAGE[module1-exercise2-image5.png](module1-exercise2-image5.png)

1. [] Set the dates for the first 6 sprints. Each sprint will be 3 weeks long. Set the start date of **Sprint 1** to **Monday of the current week, and the end date three weeks later on Friday**.

    !IMAGE[module1-exercise2-image6.png](module1-exercise2-image6.png)

    !IMAGE[module1-exercise2-image7.png](module1-exercise2-image7.png)

1. [] Create two more iterations without setting their dates, +++PI 1+++ and +++PI 2+++.

    >[!knowledge] These are just sample names. In a real project you can use any naming convention you prefer. **PI** Refers to **Program Increment**. The  goal is to show hierarchical cadences by moving three sprints into each of the PIs.
    
    !IMAGE[module1-exercise2-image8.png](module1-exercise2-image8.png)

1. [] Move **Sprint 1**, **Sprint 2**, and **Sprint 3** into **PI 1**, then move **Sprint 4**, **Sprint 5**, and **Sprint 6** into **PI 2**.

    >[!knowledge] To move a sprint, drag and drop the sprint onto PI 1 or PI 2.

1. [] Set the **PI 1** and **PI 2** start and end dates using the included sprints.  For example, **PI 1** will start with the same start date as **Sprint 1** and have the same end date as **Sprint 3**.

    !IMAGE[module1-exercise2-image9.png](module1-exercise2-image9.png)

1. [] Add an iteration **FY20 - H1** with a start date of **July 1, 2020** and end date of **December 31, 2020**.  Replace the year with your current year to match.

1. [] Add one more iteration, **FY20 - H2** with a start date of **January 1, 2021** and end date of **June 30, 2021**.  Replace the year with your current year to match.

1. [] Move the PIs (Program Increments) into the half-yearly cadences.  Maintain consistency with the dates.  The PIs should be moved into the half-yearly that encompasses their time period.  It is ok if a PI does not move into a half-yearly completely.

    !IMAGE[module1-exercise2-image10.png](module1-exercise2-image10.png)

1. [] Now that the Iterations are configured, it is time to setup the areas.  Click on the **Areas** tab.

    !IMAGE[module1-exercise2-image11.png](module1-exercise2-image11.png)

1. [] Select the root area **hol** and use the new child button to create the following Area hierarchy.  You can drag and drop areas onto nodes to create the hierarch just like you did with the Iterations.

    !IMAGE[module1-exercise2-image12.png](module1-exercise2-image12.png)

    >[!note] We will now create 3 teams matching the three levels of hierarchies we created in the areas section.

1. [] Click on the **Teams** section under the **General** settings section, then click on **New Team** button.

    !IMAGE[module1-exercise2-image13.png](module1-exercise2-image13.png)

1. [] In the new team dialogue use the following information to create the +++Modern Portfolio+++.  Be sure to **uncheck** the box next to the option 'Create an area path with the name of the team'.  We have already created our custom Area path for the project.

    !IMAGE[module1-exercise2-image14.png](module1-exercise2-image14.png)
    
    Make sure that you uncheck the **Create an area path with the name of the team** checkbox, then click on **Create team**.

1. [] Repeat the same steps to create three additional teams:

    1. [] +++CRM Program+++

    1. [] +++Web CRM+++

    1. [] +++Mobile CRM+++

    You should now see the following teams in your list.
    !IMAGE[module1-exercise2-image15.png](module1-exercise2-image15.png)

1. [] Click on the **Team configuration** section.

    !IMAGE[module1-exercise2-image16.png](module1-exercise2-image16.png)

1. [] Use the team drop-down selector to switch to the **Modern Portfolio** team configuration.  This is located at the top of the page above the Iterations and Areas links you used previously.  You will initially receive a configuration error.  We will fix this for the team by configuring Iterations and Areas.

    >[!alert] When you receive this error, do not be alarmed.  It is an indication that the team has not been configured to use your newly defined iterations or areas.  Click the **Set backlog iteration** button to continue.
    > !IMAGE[module1-exercise2-image17.png](module1-exercise2-image17.png)

1. [] Click on **Iteration** in the top breadcrumb navigation. Another error message will be displayed alerting you to set the **Backlog iteration**.  Click on **Change**, then choose hol from the drop-down, and finally click on **Set**.

1. [] Click on **change**

    !IMAGE[module1-exercise2-image18.png](module1-exercise2-image18.png)

1. [] Choose **hol** from the drop-down list, then click on **set**

    !IMAGE[module1-exercise2-image19.png](module1-exercise2-image19.png)

1. [] Click on **ok** to acknowledge setting the backlog iteration

    !IMAGE[module1-exercise2-image20.png](module1-exercise2-image20.png)

1. [] Now configure the Modern Portfolio Team to work in the **half-yearly** cadence.  Click on the !IMAGE[module1-exercise2-image21.png](module1-exercise2-image21.png) button and assign the Modern Porfolio team the H1 and H2 Iterations.

    !IMAGE[module1-exercise2-image22.png](module1-exercise2-image22.png)

1. [] Now configure the Modern Portfolio Team to work in the assigned area.  Click on the **Areas** tab.  You will receive an error stating that there are no areas configure for the team.  This is OK, we are going to configure the area for the Modern Portfolio team.

1. [] Click on **Change**, then choose the path for the Modern Portfolio Team.  When you click on **Change** the link will change to **Set**.  Choose the Modern Portfolio area, then complete the action by clicking on **Set**.  The area will be displayed below.

    !IMAGE[module1-exercise2-image23.png](module1-exercise2-image23.png)

1. [] To grant this team the ability to see "down" the hierarchy, we need to set the option to view sub-areas.  Hover your mouse over the displayed area, click on the resulting ellipses, and choose **Include sub areas**.

    !IMAGE[module1-exercise2-image24.png](module1-exercise2-image24.png)

1. [] Click on **General**, then refresh your page from your browser to clear the configuration issues.

1. [] Uncheck Features and Stories and check **Epics** as the backlog navigation level for the Modern Portfolio Team.

    !IMAGE[module1-exercise2-image25.png](module1-exercise2-image25.png)

    > [!note] These settings ensure that the portfolio team is:
    >
    >- Using Epics for planning.
    >
    >- They are able to access children items and create Features or Stories but their main focus is on Epics.
    >
    >- Using a planning cadence that includes all the program increments, and inherently all the sprints.
    >
    >- Can track the progress of epics created at the portfolio level or any sub level.
    >
    > Now that you successfully have created your **Modern Portfolio** team, we will repeat those steps to create our **CRM Program** team.

1. [] Repeat the same steps to configure the **CRM Program** team. The CRM Program team plans using **Features** casted over **Program Increment** cadences. Choose the CRM Program to begin the configuration.

    !IMAGE[module1-exercise2-image26.png](module1-exercise2-image26.png)

1. [] Just like the Modern Portfolio Team, click on Iterations link located at the top-middle of the page, then click on **change** to set the Backlog iteration for the CRM Program team to **hol**

    !IMAGE[module1-exercise2-image18.png](module1-exercise2-image18.png)

1. [] Choose **hol** from the drop-down list, then click on **set**

    !IMAGE[module1-exercise2-image19.png](module1-exercise2-image19.png)

1. [] Click on **ok** to acknowledge setting the backlog iteration

    !IMAGE[module1-exercise2-image20.png](module1-exercise2-image20.png)

1. [] Now configure the CRM Program Team to work in the **3-sprint increment** cadence.  Click on the !IMAGE[module1-exercise2-image21.png](module1-exercise2-image21.png) button and assign the Modern Porfolio team the PI 1 and PI 2 Iterations.

    !IMAGE[module1-exercise2-image27.png](module1-exercise2-image27.png)

1. [] Now configure the CRM Program Team to work in the assigned area.  Click on the **Areas** tab.  You will receive an error stating that there are no areas configure for the team.  This is OK, we are going to configure the area for the CRM Program team.

1. [] Click on **Change**, then choose the path for the CRM Program Team.  When you click on **Change** the link will change to **Set**.  Choose the CRM Program area, then complete the action by clicking on **Set**.  The area will be displayed below.

    !IMAGE[module1-exercise2-image28.png](module1-exercise2-image28.png)

1. [] To grant this team the ability to see "down" the hierarchy, we need to set the option to view sub-areas.  Hover your mouse over the displayed area, click on the resulting ellipses, and choose **Include sub areas**.

    !IMAGE[module1-exercise2-image29.png](module1-exercise2-image29.png)

1. [] Click on **General**, then refresh your page from your browser to clear the configuration issues.

1. [] Uncheck Stories leaving only **Features** checked as the backlog navigation level for the CRM Program Team.

    !IMAGE[module1-exercise2-image30.png](module1-exercise2-image30.png)

    >[!note] Now that you successfully configured the **CRM Program** team, we will repeat those steps to create our **Web CRM** team.

1. [] Repeat the same steps to set up team configuration for the **Web CRM** team.  Don't forget to set the **Backlog iteration** first before choosing the iterations.

    !IMAGE[module1-exercise2-image31.png](module1-exercise2-image31.png)

1. [] Now configure the Web CRM Team to work in the Web CRM area.

    !IMAGE[module1-exercise2-image32.png](module1-exercise2-image32.png)

1. [] Click on **General**, then refresh your page from your browser to clear the configuration issues.

1. [] Uncheck Features leaving **Stories** checked as the backlog navigation level for the Modern Portfolio Team.

    !IMAGE[module1-exercise2-image33.png](module1-exercise2-image33.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Plan Work Stream Collaboration Flow

### Introduction

In this exercise, you will learn how to use Kanban boards and backlogs to allow collaboration across teams, programs and portfolios. While alignment is needed across teams, a good level of autonomy is required to allow teams to scale Agile. Backlogs and Kanban boards are used by each team to organize how they work together to deliver value.

### Objectives

After completing this lab, you will be able to:

- Setup cross teams' collaboration.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)
1.  [Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Navigate to the **Boards** section.

    !IMAGE[module1-exercise3-image1.png](module1-exercise3-image1.png)

1. [] Select the **Modern Portfolio Boards**.

    !IMAGE[module1-exercise3-image2.png](module1-exercise3-image2.png)

1. [] Add this board to your favorites.

    !IMAGE[module1-exercise3-image3.png](module1-exercise3-image3.png)

1. [] Click on the **Configure team settings** icon.

    !IMAGE[module1-exercise3-image4.png](module1-exercise3-image4.png)

1. [] Check the **Show ID** checkbox.

1. [] Under the **Fields** section, click on **+ Field** button, then add **Iteration Path**.

    !IMAGE[module1-exercise3-image5.png](module1-exercise3-image5.png)

1. [] Check the **Check if you want to display fields, even when they are empty** checkbox.

1. [] Click on **Columns** under the **Boards** section to display the columns, then

    1. [] Rename the **New** Column to +++Backlog+++.

    1. [] Rename the **Active** Column to +++In Progress+++

    1. [] Rename the **Closed** column to +++Live+++

        !IMAGE[module1-exercise3-image6a.png](module1-exercise3-image6a.png)

    1. [] Click on **In Progress** then click the **+ Column** button.

    1. [] Name the column +++Approved+++ and verify the State is set to **New**

        !IMAGE[module1-exercise3-image7.png](module1-exercise3-image7.png)

    1. [] Click on **In Progress** then click the **+ Column** button once more, and add +++Planned+++ column.

    1. [] Delete the Column **Resolved**

        !IMAGE[module1-exercise3-image8.png](module1-exercise3-image8.png)

1. [] Click on **Save and Close**.  The **Modern Portfolio Team** Epics board should now look as follows:

    !IMAGE[module1-exercise3-image9.png](module1-exercise3-image9.png)

1. [] Using the team drop down, switch to the **CRM Program** board.

    !IMAGE[module1-exercise3-image10.png](module1-exercise3-image10.png)

1. [] Without any visual assistance, navigate to the **CRM Program** board and set up the following features board columns. Add this board to your favorites.

    !IMAGE[module1-exercise3-image11.png](module1-exercise3-image11.png)

    > [!TIP] Be sure to set the State Mapping for the In Progress column to Active.  You can find State Mapping in the Columns section and by clicking on the column name.  These appear as tabs in the Settings window.

1. [] Without any visual assistance, navigate to the **Web CRM** board area and set up the following story board columns. Add this board to your favorites.

    > [!TIP] Be sure to set the State Mapping for the In Progress column to Active.  You can find State Mapping in the Columns section and by clicking on the column name.  These appear as tabs in the Settings window.

    !IMAGE[module1-exercise3-image12.png](module1-exercise3-image12.png)

    >[!note] To split a column into doing and done, click the checkbox pictured below:
    !IMAGE[module1-exercise3-image13.png](module1-exercise3-image13.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Portfolio Planning

### Introduction

The portfolio team is responsible of setting up the mid-term to long term goals and initiatives. They do that by creating Epics. In this exercise, you will learn how portfolio teams can use Kanban boards to plan for mid to long term objectives.

### Objectives

After completing this lab, you will be able to:

- Use boards to plan at the portfolio level.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)
1.  [Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)
1.  [Exercise 3: Plan Work Stream Collaboration Flow](#exercise-3-plan-work-stream-collaboration-flow)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Navigate to the **Modern Portfolio** board.

1. [] Create the following 4 Epics (the ID numbers will be automatically generated).  Click on **+ New Item** button to create an Epic.

    1. []  +++Customers Management+++
    1. []  +++Sales Management+++
    1. []  +++Leads Management+++
    1. []  +++Setup Basic SaaS Architecture+++

    !IMAGE[module1-exercise4-image1.png](module1-exercise4-image1.png)

1. [] Click on the **Unassigned** icon and assign all four of these epics to yourself (In a real-world scenario these epics may be assigned to the product owner).

    !IMAGE[module1-exercise4-image2.png](module1-exercise4-image2.png)

1. [] Open the **Setup Basic SaaS Architecture** Epic, then assign **Architectural** in the Value Area.

    !IMAGE[module1-exercise4-image3.png](module1-exercise4-image3.png)

1. [] Click on the **Add Tag** button and enter +++MVP+++. Click on it once more and enter +++Compete+++.

    > [!KNOWLEDGE] Using tags at this level, allows you to define the value streams, themes or funding sources of these epics. In other words, what is the value to your organization or your customer from trying to implement these business needs.

    !IMAGE[module1-exercise4-image4.png](module1-exercise4-image4.png)

1. [] Use the same steps to assign the following values to the remaining Epics.

    1. [] For the Epic **Leads Management**, change the value area to **Business**, add the +++MVP+++ tag, then click the !IMAGE[module1-exercise4-image5.png](module1-exercise4-image5.png) button to complete the action.
    
    1. [] For the Epic **Sales Management**, change the value area to **Business**, add the +++MVP+++ tag, then click the !IMAGE[module1-exercise4-image5.png](module1-exercise4-image5.png) button to complete the action.
    
    1. [] For the Epic **Customers Management**, change the value area to **Business**, add the +++MVP+++ and +++Compete+++ tags, then click the !IMAGE[module1-exercise4-image5.png](module1-exercise4-image5.png) button to complete the action.

1. [] Click on the board settings icon located at the top right of the Kanban board represented by a gear icon
    
    !IMAGE[module1-exercise4-image6.png](module1-exercise4-image6.png)

1. [] Click on the **Swimlanes** section.

1. [] Click the **+Swimlane** button.

1. [] Name the swimlane +++Business+++.

1. [] Click on the default swimlane and rename it to +++Architecture+++, then click the **Save and Close** button.

    >[!knowledge]The use of swimlanes allows you to visually track the progress of your epics using additional angles in addition to your normal workflow which is represented by the columns.  By creating two swimlanes here, we can visual the process to those Epics applied to architectual changes or our normal rhythm of business.

1. [] Drag the **Customers Management**, **Sales Management**, and the **Leads Management** Epics to the **Approved** column, and move them to the business swimlane.

1. [] Drag the **Setup Basic SaaS Architecture** Epic to the **Approved** column, and move this Epic to the architecture swimlane

    !IMAGE[module1-exercise4-image7.png](module1-exercise4-image7.png)

1. [] Drag the **Customers Management** Epic to the Planned column, and drag the **Setup Basic SaaS Architecture** Epic to the Planned column keeping them in their currently assigned swimlane.

    !IMAGE[module1-exercise4-image8.png](module1-exercise4-image8.png)

1. [] Click on **Iteration Path** on the **Sales Management** Epic, and choose the H2 Iteration.

1. [] Click on **Iteration Path** on the **Leads Management** Epic, and choose the H2 Iteration.

    >[!note]This last action means that the portfolio team, would like to get these Epics done in H2. The program teams will then have to figure out how they will be able to achieve that.

1. [] Try collapsing the swimlanes and note how you are presented a roll up view of how many epics are in each stage of your workflow.

    !IMAGE[module1-exercise4-image9.png](module1-exercise4-image9.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 5: Program Planning

### Introduction

The Program Team is responsible for defining how the organization will achieve the goals and value that the Modern Portfolio team has defined. They do that by creating and managing Features. In this exercise, you will learn how program teams can use a feature backlog to plan for mid to long term objectives.

### Objectives

After completing this lab, you will be able to:

- Use backlogs to plan at the program level.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)
1.  [Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)
1.  [Exercise 3: Plan Work Stream Collaboration Flow](#exercise-3-plan-work-stream-collaboration-flow)
1.  [Exercise 4: Portfolio Planning](#exercise-4-portfolio-planning)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Install the Decompose extension from the marketplace - hover over the shopping bag icon in the righthand corner, click **Browse Marketplace** then search +++Decompose+++ and install it for free.

    !IMAGE[module1-exercise5-image1.png](module1-exercise5-image1.png)

1. [] Install this extension by clicking on the extension, then click on the **Get it free** button, and finally click on the **Install** button.  When complete click on the **Proceed to organization** button and you will be returned to your organization.  Click on the **hol** project to return to your project:  
    
    !IMAGE[module1-exercise5-image2.png](module1-exercise5-image2.png)

1. [] Navigate to the **Backlogs** section found under Boards.

    !IMAGE[module1-exercise5-image3.png](module1-exercise5-image3.png)

1. [] Switch to the **CRM Program** team backlogs.

    !IMAGE[module1-exercise5-image4.png](module1-exercise5-image4.png)

1. [] Turn **Mapping** on.

    !IMAGE[module1-exercise5-image5.png](module1-exercise5-image5.png)

1. [] Click on the selected **mapped to team** drop down and select the **Modern Portfolio**.

    !IMAGE[module1-exercise5-image6.png](module1-exercise5-image6.png)

1. [] Add the following Features, by clicking on the **+ New Work Item** button.

    1. [] +++Initial Multi-Tenant Database Architecture+++

    1. [] +++Initial Multi-Tenant REST API+++

    1. [] +++Initial Multi-Tenant User Interface+++

    !IMAGE[module1-exercise5-image7.png](module1-exercise5-image7.png)

1. [] Select these three features then drag and drop them onto the **Set up Basic SaaS Architecture**.

    !IMAGE[module1-exercise5-image8.png](module1-exercise5-image8.png)

1. [] Add the following additional Features.  We will map these to the **Customers Management** Epic in the next step.

    1. [] +++Create Customers+++

    1. [] +++Edit Customers+++

    1. [] +++Search Customers+++

    1. [] +++Archive Customers+++

1. [] Select these four features and drag and drop them onto the **Customers Management** Epic. These features will eventually get implemented by different feature teams.

    !IMAGE[module1-exercise5-image9.png](module1-exercise5-image9.png)

1. [] Switch to the **Planning** view.

    !IMAGE[module1-exercise5-image10.png](module1-exercise5-image10.png)

1. [] Click on **Column Options**.

    !IMAGE[module1-exercise5-image11.png](module1-exercise5-image11.png)

1. [] Click the red <span style="color: red;font-weight: bold;">X</span> on the right side and remove **Work Item Type**, **Business Value**, and **Value Area**. Click on **Add a column** button and add +++Iteration path+++ and +++Parent+++ to the columns visible on the screen.

1. [] Drag the columns to re-order them so the order is Title, Parent, State, Effort, Tags, Iteration Path.

    !IMAGE[module1-exercise5-image12.png](module1-exercise5-image12.png)

1. [] Click **Ok** to confirm your changes. Your features backlog should now look as follows.

    !IMAGE[module1-exercise5-image13.png](module1-exercise5-image13.png)

1. [] Click on **View as Board**.

    !IMAGE[module1-exercise5-image14.png](module1-exercise5-image14.png)

1. [] Drag the **Initial Multi-Tenant Database Architecture**, and the **Initial Multi-Tenant REST API** Features to the **Planned** column.

    >[!note] When you move the Features to the Planned column, they will automatically be assigned to you.  They will also be automatically assigned to the current sprint which is PI 1.

    !IMAGE[module1-exercise5-image15.png](module1-exercise5-image15.png)

1. [] Using the context menu of the **Initial Multi-Tenant Database Architecture** click on **Decompose work item**.

    !IMAGE[module1-exercise5-image16.png](module1-exercise5-image16.png)

1. [] Enter the following stories.  After typing the name of the Story, press **Enter** to accept the story and create another one.  On the last Story, do not press Enter, instead click on the **Create** button to complete the action.

    1. [] +++Create Initial ERD Diagram+++     
    1. [] +++Create Sharding Architecture+++     
    1. [] +++Create DB CI/CD+++     

    !IMAGE[module1-exercise5-image17.png](module1-exercise5-image17.png)

1. [] Switch back to the **Features backlog** by clicking on the **View as Backlog** link just above the board. Verify the **Planning** side pane is turned on.

    !IMAGE[module1-exercise5-image18.png](module1-exercise5-image18.png)

1. [] We can see the total planned effort for the current program increment (Stories and Bugs).

    !IMAGE[module1-exercise5-image19.png](module1-exercise5-image19.png)

1. [] Toggle the **View Parents** option.

    !IMAGE[module1-exercise5-image20.png](module1-exercise5-image20.png)

1. [] Click on the **+** next to **Order** to expand one additional level and you should see the following view.

    !IMAGE[module1-exercise5-image21.png](module1-exercise5-image21.png)

1. [] Select the three **Stories** then click on **Edit**.

    !IMAGE[module1-exercise5-image22.png](module1-exercise5-image22.png)

1. [] Assign **Web CRM** to the **Area Path** then hit save.  Completing this action makes the Web CRM team the owner of these Stories and the Web CRM team will be able to see them on their board.

    !IMAGE[module1-exercise5-image23.png](module1-exercise5-image23.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 6: Feature Team Planning

### Introduction

Feature teams are responsible for the technical implementation of features defined by the program teams. They operate in an autonomous, self-organizing way.

### Objectives

After completing this lab, you will be able to:

- Use Stories backlogs and boards to plan sprints.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)
1.  [Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)
1.  [Exercise 3: Plan Work Stream Collaboration Flow](#exercise-3-plan-work-stream-collaboration-flow)
1.  [Exercise 4: Portfolio Planning](#exercise-4-portfolio-planning)
1.  [Exercise 5: Program Planning](#exercise-5-program-planning)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Navigate to the **Web CRM** team backlog.
    
    !IMAGE[module1-exercise6-image1.png](module1-exercise6-image1.png)

1. [] Open the **Create Initial ERD Diagram** story.

1. [] Assign it to **yourself**.

    1. [] Enter +++8+++ in the story points field. 
    
        >[!note] Assuming you are using story points to estimate Stories and Bug complexity

    1. [] Click **Save & Close**

        !IMAGE[module1-exercise6-image2.png](module1-exercise6-image2.png)

1. [] Open the **Create Sharding Architecture** story.

    - Assign it to **yourself**

    - Assign +++5+++ story points to it

1. [] Open the **Create DB CI/CD** story.

    - Assign it to **yourself**

    - Assign +++5+++ story points to it

    >[!note]Since this is the first iteration for this team, the team's velocity is not yet available. Hence, forecasts are not going to be high fidelity.

1. [] Drag and drop the **Create Initial ERD Diagram**, and **Create Sharding Architecture** Stories onto Sprint 1.

    !IMAGE[module1-exercise6-image3.png](module1-exercise6-image3.png)

1. [] Drag and drop the **Create DB CI/CD** Story onto Sprint 2.

1. [] Your planning summary should now look as follows.

    !IMAGE[module1-exercise6-image4.png](module1-exercise6-image4.png)

1. [] Click on the **View as Board** link to view the Web CRM Team board.

1. [] Move the **Create Initial ERD Diagram**, and the **Create Sharding Architecture** Stories to the Planned column.

1. [] The Web CRM Team board should now look as follows.

    !IMAGE[module1-exercise6-image5.png](module1-exercise6-image5.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 7: Delivery Planning

### Introduction
Having a hierarchical backlog with multiple teams requires some high level oversight so we can understand where we are in our development activites, which teams are in which sprint, and what the teams are working on.  Creating a Delivery Plan using the Azure DevOps Services Extension Delivery Plans helps create this dynamic visual.

### Objectives

After completing this lab, you will be able to:

- Use delivery plans to track cross team collaboration and plan upcoming milestones.

### Prerequisites

1.  [Exercise 1: Create the Team Project](#exercise-1-create-the-team-project)
1.  [Exercise 2: Setup Team Structure](#exercise-2-setup-team-structure)
1.  [Exercise 3: Plan Work Stream Collaboration Flow](#exercise-3-plan-work-stream-collaboration-flow)
1.  [Exercise 4: Portfolio Planning](#exercise-4-portfolio-planning)
1.  [Exercise 5: Program Planning](#exercise-5-program-planning)
1.  [Exercise 6: Feature Team Planning](#exercise-6-feature-team-planning)  

---

[Return to Module 1 Table of Contents](#toc1)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Navigate to the Project Settings page and setup the **Mobile CRM** team to use the same sprints as the Web CRM team, use the **Mobile CRM** area and Stories for planning.

    >[!HINT] To access the Project Settings page, click on Project Settings link located in the bottom-left of the web page, then click on Team Configuration in the Boards section, and finally click on the Team Selector at the top middle of the page to expose the drop-down to choose the Mobile CRM team.

    !IMAGE[module1-exercise7-image1.png](module1-exercise7-image1.png)

1. [] Click on the Areas breadcrump navigation link and setup the Mobile CRM Team areas.

    !IMAGE[module1-exercise7-image2.png](module1-exercise7-image2.png)

1. [] Configure the Mobile CRM Team to use Stories.  Click on the General link in the breadcrumb navigation, then choose only Stories for the Backlog navigation level.

    !IMAGE[module1-exercise7-image3.png](module1-exercise7-image3.png)

1. [] Install the +++Delivery Plans+++ extension from the **Azure DevOps Services** marketplace.

    !IMAGE[module1-exercise7-image4.png](module1-exercise7-image4.png)

1. [] Once installed, navigate to the **Plans** page via the left navigation menu under the Boards section.

    !IMAGE[module1-exercise7-image5.png](module1-exercise7-image5.png)

1. [] Click on **New plan**.

    !IMAGE[module1-exercise7-image6.png](module1-exercise7-image6.png)

1. [] Name the plan +++CRM Delivery Plan+++ and add the following teams and backlogs to it.

    > [!HINT] Feel free to add a description to help others understand the visulization of this plan.  One example might be:  ++This delivery plan projects the CRM Program Team, Web CRM Team, and the Mobile CRM Team and all related activities under a shared Iteration.  Use this plan to visualize what work is being done by a team and how that work relates to the CRM Program.++

    > [!HINT] To add another team, click the **+ Add Team** button located just above the Field Criteria section heading.

    !IMAGE[module1-exercise7-image7.png](module1-exercise7-image7.png)

1. [] Click on **+ Add Criteria** button and set a Field Criteria for the plan.  Setting this field criteria lets us filter only for active assignements.  Choose **State** for the field, **<>** for the Operator, and **New** for the value, then click on the Create button.

    !IMAGE[module1-exercise7-image8.png](module1-exercise7-image8.png)

1. [] Once created, you should get the following view.

    !IMAGE[module1-exercise7-image9.png](module1-exercise7-image9.png)

1. [] Click on the settings icon at the top of the delivery plan.

    !IMAGE[module1-exercise7-image10.png](module1-exercise7-image10.png)

1. [] Add the following timeline markers. The first date should be before the end of the current PI 1 and the second date at the start of the PI 2.

    !IMAGE[module1-exercise7-image11.png](module1-exercise7-image11.png)

1. [] The delivery plan should now reflect the newly added markers.

    !IMAGE[module1-exercise7-image12.png](module1-exercise7-image12.png)

This plan should allow you to plan and track for:

- Cross project, cross teams' dependencies,

- major milestones, and

- important dates.

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===

# <span class="module" id="2">Module 2</span>: <span class="title">Development & Test</span>

In this module, you learned the basics of source control management using Git and Azure DevOps Services.  This has begun to build the foundation of a continuous integration and continuous delivery strategy.  There are many strategies; for this module we are using the Topic Branching strategy and using Tasks on the Sprint Task Board as a trigger when to integrate our code.

### <span id="toc2">Table of Contents</span>
 
##### [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
[Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)  
[Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)  
[Exercise 3: Create a Local Topic Branch](#exercise-3-create-a-local-topic-branch)  
[Exercise 4: Complete the Work Item](#exercise-4-complete-the-work-item)  
[Exercise 5: Create a Pull Request](#exercise-5-create-a-pull-request)  
[Exercise 6: Approve the Pull Request and Clean Up Local Branches](#exercise-6-approve-the-pull-request-and-clean-up-local-branches)  
[Exercise 7: Add Docker Support](#exercise-7-add-docker-support)  

##### [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
[Exercise 1: Adding a Test Project](#exercise-1-adding-a-test-project)  
[Exercise 2: Test Driven Development (TDD)](#exercise-2-test-driven-development)  
[Exercise 3: Dependency Injection](#exercise-3-dependency-injection)  
[Exercise 4: Designing for Testability](#exercise-4-designing-for-testability)  

##### [Lab 4: Feature Flags](#lab-4-feature-flags)
[Exercise 1: Create a feature flag](#exercise-1-create-a-feature-flag)  
[Exercise 2: Use a feature flag in your application](#exercise-2-use-a-feature-flag-in-your-application)  

===

##### <span class="module">Module 2</span>: <span class="title">Development & Test</span>
# Lab 2: Source Control Management using Git

### Introduction

In this lab, you will learn the basics of source control management using Git and Azure DevOps Services. Also, you will start to build the foundation of a continuous integration and continuous delivery strategy.

### Objectives

After completing this lab, you will be able to:

- Create the initial code base for your project.

- Create topic branches.

- Complete Azure Boards work items.

- Create and approve pull requests.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)

### Estimated Time to Complete This Lab

90 minutes

### For More Information

Source Control with Azure DevOps Server or Azure DevOps Services [https://docs.microsoft.com/en-us/Azure DevOps/user-guide/source-control](https://docs.microsoft.com/en-us/vsts/user-guide/source-control)

Git [https://git-scm.com/](https://git-scm.com/)

Overview of ASP.NET Core MVC [https://docs.microsoft.com/en-us/aspnet/core/mvc/overview?view=aspnetcore-3.1](https://docs.microsoft.com/en-us/aspnet/core/mvc/overview?view=aspnetcore-3.1)

Docker [https://www.docker.com/](https://www.docker.com/)

===

# Exercise 1: Create a Sample Project

### Introduction

In this exercise, you will create a sample project.

### Objectives

After completing this lab, you will be able to:

- Create a sample project with a Git repository

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Open a PowerShell window in Administrator mode.

    !IMAGE[module2-exercise1-image1.png](module2-exercise1-image1.png)

1. [] Once the PowerShell window is open type the following command.  Type **A** if asked to confirm the execution.

    ```PowerShell-linenums
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
    ```

1. [] If this is the first time you are running Git on this computer run these two commands.

    >[!alert]Use the same email address you used to authenticate to your Azure DevOps instance

    ``` PowerShell-linenums
    git config --global user.email @lab.CloudPortalCredential(Student1).Username
    git config --global user.name Student1-@lab.LabInstance.Id
    ```

1. [] Follow these steps to create a folder where we will initiate a Git repository for the project.

    ```PowerShell-linenums
    Set-Location -Path  'c:\'
    New-Item -Path 'hol' -ItemType 'Directory'
    Set-Location -Path 'c:\hol\'
    New-Item -Path 'ModernApiAppSolution' -ItemType 'Directory'
    Set-Location -Path 'c:\hol\ModernApiAppSolution\'
    git init
    New-Item -Path 'ModernApiApp' -ItemType 'Directory'
    Set-Location -Path 'c:\hol\ModernApiAppSolution\ModernApiApp\'
    ```

1. [] Use the following command to create a new .Net Core Web Api project in the **c:\ModernApiAppSolution\ModernApiApp** folder.

    ```PowerShell-linenums
    dotnet new webapi
    ```
    
1. [] Issue the following commands to create a locally signed development certificate.  A certificate is required when testing HTTPS.  This helps with a self-signed certificate for local development.

    ```PowerShell-linenums
    dotnet dev-certs https
    dotnet dev-certs https --trust
    ```

1. [] Use the following command to open the project in Visual Studio Code.

    ```PowerShell-linenums
    cd..
    Code .
    ```

1. [] Visual Studio Code might ask you to add some **assets** required for building and debugging the solution project, click **Yes**.  Usually, this will take about 30 seconds to show.

    !IMAGE[module2-exercise1-image2.png](module2-exercise1-image2.png)

1. [] Expand the **ModernApiApp** folder in Visual Studio Code to see all the files in your project.

    !IMAGE[module2-exercise1-image3.png](module2-exercise1-image3.png)

    > [!KNOWLEDGE] The number in blue on the activity bar (left bar) is the count of all the new files created in the repository you created by issuing git init.  The repository location is c:\hol\ModernApiAppSolution.  We do not need all of these files when we publish this repository to Azure DevOps Services, but we do need them to work with locally.  In the next few steps we will create a file that tells Git to ignore these miscellaneous files that are created when compiling, for example cached or temporary objects, or the resulting .dll or .exe.  

1. [] Press **F1** to launch the Visual Studio Code command window.

    !IMAGE[module2-exercise1-image4.png](module2-exercise1-image4.png)

    > [!HINT] Some laptops offer a second action for the Function (F1 - F12) Keys.  If you find that pressing F1 does not produce the Visual Studio Command Window, try locating your device's Fn key, or the toggle key for your function keys.

    > [!HINT] You can use the Virtual Keyboard for your virtual machine as well.  In your virtual machine, click the lightning bolt located at the extreme top-left, then choose the Virtual Keyboard and click on F1.  !IMAGE[module2-exercise1-image5.png](module2-exercise1-image5.png)  

1. [] Type +++add gitignore+++, press **Enter**, then type +++**VisualStudio**+++.  You will need to type VisualStudio to narrow the selection.  Click the first item in the menu 'VisualStudio VisualStudio.gitignore to create your .gitignore file in your project.

    !IMAGE[module2-exercise1-image6.png](module2-exercise1-image6.png)

1. [] Press F1 again to raise the Visual Studio Code command window a second time, click on **Add gitignore**, type +++**VisualStudioCode**+++, click on VisualStudioCode, then choose **Append**.  We are now appending additional ignore settings in the same file we just created.

    !IMAGE[module2-exercise1-image7.png](module2-exercise1-image7.png)

1. [] A new .gitignore file will be created in your c:\hol\ModernApiAppSolution folder. Save all your files by pressing CTRL+S or click on File -> Save in Visual Studio Code.

1. [] Go to the integrated source control management window in Visual Studio Code, type a message +++Created the Initial Web API Project+++ then commit your code.

    !IMAGE[module2-exercise1-image8.png](module2-exercise1-image8.png)

    > [!KNOWLEDGE] The integrated source control management window is located in the Activity Bar in Visual Studio code.  This in on the left side of Visual Studio Code and will have a blue number on the icon representing the number of changes to commit.

    >[!note] We will now publish this repository to a remote Git repository in the same Azure DevOps Services project you created during Lab 1.

1. [] From your web browser, go to Azure DevOps Services **Project Settings** for the **hol** project that you created in Lab 1.

    !IMAGE[module2-exercise1-image9.png](module2-exercise1-image9.png)

1. [] Scroll down to the **Repos** section, then click on Repositories.

    !IMAGE[module2-exercise1-image10.png](module2-exercise1-image10.png)

1. [] Click on the **+ Create** button.

    !IMAGE[module2-exercise1-image11.png](module2-exercise1-image11.png)

1. [] Name the repository +++ModernApiRepository+++, uncheck the box next to **Add a README**, then click the **Create** button.

    !IMAGE[module2-exercise1-image12.png](module2-exercise1-image12.png)

1. [] Navigate to the **Repos** section in Azure DevOps Services by click on the orange Repos icon in the left navigation menu.

    !IMAGE[module2-exercise1-image13.png](module2-exercise1-image13.png)

1. [] Click the down arrow to expose your repositories and choose the **ModernApiRepository**.  This screen will show your files once we have pushed your local repository to this remote repository.  At the moment, it displays the various ways you can connect to this repository and add files.  We will be using the **Push an existing repository from command line** in the next step.

    !IMAGE[module2-exercise1-image14.png](module2-exercise1-image14.png)

1. [] Issue the following commands in PowerShell to connect to your repository in Azure DevOps Services.  You will find these commands in the **Push an existing repository from command line** section when viewing the **ModernApiRepository** Files section.  If you have added a README file, this section will not appear.
 
    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    git remote add origin https://Student1-@lab.LabInstance.Id@dev.azure.com/Student1-@lab.LabInstance.Id/hol/_git/ModernApiRepository
    git push -u origin --all
    ```
1. [] When presented the **Sign in** page, use +++@lab.CloudPortalCredential(Student1).Username+++ as your username, then click on the **Next** button. 

    !IMAGE[module2-exercise1-image15.png](module2-exercise1-image15.png)

1. [] When presented the **Enter password** page, use +++@lab.CloudPortalCredential(Student1).Password+++ for your password, then click on the **Sign in** button.

1. [] From your web browser, go to the **Repos - Files** screen in Azure DevOps Services. Refresh the page and you should be able to see all the files you just pushed to the remote repository.

    !IMAGE[module2-exercise1-image16.png](module2-exercise1-image16.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 2: Create a Remote Topic Branch

### Introduction

This exercise, and the remaining ones in this lab, will help us focus on a process that allows parallel development, team collaboration, ensures quality, and embraces continuous integration and continuous delivery.

### Objectives

After completing this lab, you will be able to:

- Create a remote topic branch and link it to an Azure DevOps work item

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)  

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Navigate to the **Web CRM Team** board, and click on **+ New Item**

    !IMAGE[module2-exercise2-image1.png](module2-exercise2-image1.png)

1. [] From the **Web CRM Team** board, create a new story titled +++Create Customer Controller+++.  Click on the story name, and set the following properties: 

    1. [] Assign it to **yourself**

    1. [] Verify its iteration is set to +++Sprint 1+++

    1. [] Click on **Save** by choosing the drop-down arrow next to the **Save & Close** button, then choose **Save**

    !IMAGE[module2-exercise2-image2.png](module2-exercise2-image2.png)

1. [] From the work item form click on the **create a branch** link located in the **Development** section on the far right.

    !IMAGE[module2-exercise2-image3.png](module2-exercise2-image3.png)

1. [] Name the topic branch using the following naming convention **topics/tb-###**. Where ### is the number from the story that you just created. These numbers are unique to the ORGANIZATION and as such serve as an easy way to identify what branch is related to a work item.  In the image below, you see that the ID is 15, yours may differ.  Locate the ID of your story by looking to the left of the story title.  Click on **Create branch** to complete the action and create a Remote Topic Branch of this work item.

    !IMAGE[module2-exercise2-image4a.png](module2-exercise2-image4a.png)

1. [] Move the **Create Customer Controller** to the In **Progress - Doing** column.  By moving this work item here you are expressing what you are current working on.  As work progresses, we will move this to the **In Progress - Done** column and configure workflows to automatically move this into the **Done** column.

    !IMAGE[module2-exercise2-image5.png](module2-exercise2-image5.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Create a Local Topic Branch

### Introduction
Once you have created a remote branch in Azure DevOps Services that is tied to your work item, then next step is to create a local topic branch so you can work in isolation for that work item.  You first fetch the changes in your remote repository then checkout that branch.  When you fetch the changes Git updates your refs in your local repository.  When you checkout that branch it is remote tracked to Azure DevOps Services so Git knows which commits go with any particular branch.

### Objectives

After completing this lab, you will be able to:

- Create a local topic branch

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)
1.  [Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] From the PowerShell window you have been using, use the following command to update your local git repository.  You will see your PowerShell respond with feedback about the remote branch.

    ```PowerShell-linenums
    git fetch
    ```

    > [!KNOWLEDGE] The FETCH command will fetch branches and/or tags from one or more other repositories, along with the objects necessary to complete their histories.
 
1. [] To switch to the remote branch and create a local branch, use the following command:

    ```PowerShell-linenums
    git checkout topics/tb-###
    ```

    > [!ALERT] You must replace ### with your topic branch number.  That number will be the story ID.  Refer to the results of the FETCH command to view the number, then update the command accordingly.

    !IMAGE[module2-exercise3-image1.png](module2-exercise3-image1.png)


### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Complete the Work Item

### Introduction
Now that work has be complted on the topic branch it is time to use our new process methodology and complete the work item.  By moving the work item into In-Progress Done you communicate to your team that you have met the teams Definition of Done and are waiting for the completion of the pull request.  The Pull Request process will automatically move the work item to the Done column indicating a merge was compelted successfully and a full build with all tests are underway.

### Objectives

After completing this lab, you will be able to:

- Complete a work item

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)
1.  [Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)
1.  [Exercise 3: Create a Local Topic Branch](#exercise-3-create-a-local-topic-branch)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] From Visual Studio Code, add a folder to **ModernApiApp** project and name it +++Models+++ at the root of the **ModernApiApp** folder.  Click on the **ModernApiApp** folder, then click on the folder icon located to the right of the text **ModernApiAppSolution**.

    !IMAGE[module2-exercise4-image1.png](module2-exercise4-image1.png)

1. [] Right-click on the Models folder, then from the context menu, left-click on **New C\# Class** and name the file +++Customer.cs+++.

    !IMAGE[module2-exercise4-image2.png](module2-exercise4-image2.png)

1. [] You should have a new file in the Models folder that resembles the following

    !IMAGE[module2-exercise4-image3a.png](module2-exercise4-image3a.png)

1. [] Copy the following code to the **Customer.cs** class file at line 5.

    ```C#-linenums
    public int Id { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
    ```

1. [] Your **Customer.cs** class file should now resemble the following

    !IMAGE[module2-exercise4-image4.png](module2-exercise4-image4.png)

1. [] In the **Controllers** folder, we are going to create our Customers controller file.  Right-click on the Controllers folder, then left-click on **New File** and name the file +++CustomersController.cs+++

    !IMAGE[module2-exercise4-image5.png](module2-exercise4-image5.png)

    > [!KNOWLEDGE] We are using the Model-View-Controller, or MVC, design pattern to create our Web API project.  The MVC pattern separates an application into three main groups of components: Models, Views, and Controllers.  The pattern helps to achieve [separation of concerns](https://docs.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/architectural-principles#separation-of-concerns). Using this pattern, user requests are routed to a Controller which is responsible for working with the Model to perform user actions and/or retireve results of queries.  The Controller chooses the View to display to the user, and provides it with any Model data it requires.  For more information please navigate to [Overview of ASP.NET Core MVC](https://docs.microsoft.com/en-us/aspnet/core/mvc/overview?view=aspnetcore-3.1).

1. [] Copy the following code to the **CustomersController.cs** class.

    ```C#-linenums
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using ModernApiApp.Models;

    namespace ModernApiApp.Controllers
    {
        [Route("api/[controller]")]
        public class CustomersController : ControllerBase
        {
            // GET api/customers
            [HttpGet]
            public IEnumerable<Customer> Get()
            {
                var customers = new List<Customer>();
                for (int i = 0; i < 10; i++)
                {
                    var customer = new Customer {Id= i+1, Name = $"Customer {i+1}" , Address = $"{(i+1) * 100} Main St" };
                    customers.Add(customer);
                }
                return customers.ToArray();
            }
        }
    }
    ```

1. [] Save all the changes. Click on **File -> Save All** from Visual Studio Code.

1. [] Switch to the PowerShell window and run the following commands:

    1. [] Change to the ModernApiApp project folder.
        
        ```PowerShell-linenums
        cd ModernApiApp
        ```
    1. [] Build the project.

        ```PowerShell-linenums
        dotnet build
        ```   
    
        >[!alert] By issuing the **dotnet build** command, we are building the project and its dependencies into a set of binaries.  These include the project's code in Intermediate Language (IL) files with a .dll extension.  We will also have a resulting .exe file.
    
    1. [] Run the application and verify it works correctly.
    
        ```PowerShell-linenums
        dotnet run
        ```
    
    !IMAGE[module2-exercise4-image6.png](module2-exercise4-image6.png)


1. [] Navigate to the following url: +++https://localhost:5001/api/customers+++. You may receive a certificate warning.  It is safe to proceed to the webpage past the certificate warning.

1. [] You should get the following results:

    !IMAGE[module2-exercise4-image7.png](module2-exercise4-image7.png)

    > [!NOTE] This demonstrates that your new code changes are working.

1. [] Close your browser window or tab that has your code change results.

1. [] Stop the execution of the API. Return to the Powershell window and press **CTRL + C** a couple of times.

    !IMAGE[module2-exercise4-image8.png](module2-exercise4-image8.png)

1. [] Save all your work in Visual Studio Code.

1. [] Commit your changes to the local topic branch.

    1. [] Click on the Integrated Source Control icon on the Activity Bar in Visual Studio Code.  This icon is third from the top on the left side of Visual Studio Code and will have a blue number on it representing the number of changes to commit.

    1. [] Provide a message for the commit: +++Created the Customer Model and Customer Controller+++

    1. [] Commit the changes by clicking the **Commit** button just above the comment input text field.

    !IMAGE[module2-exercise4-image9.png](module2-exercise4-image9.png)

1. [] Return to your PowerShell window and press **ENTER**.  The prompt has changed to green indicating the branch you are working on is ahead of its remote, the one on Azure DevOps Services which is tied to the Work Item you created earlier.

    !IMAGE[module2-exercise4-image10.png](module2-exercise4-image10.png)

1. [] We must synchronize these two so your local changes are recorded on the remote tracking branch on Azure DevOps Services.  Issue the following command:

    ```PowerShell-linenums
    git push
    ``` 
    !IMAGE[module2-exercise4-image11.png](module2-exercise4-image11.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 5: Create a Pull Request

### Introduction

In order to merge the work that has been done on the topic branch with the main branch, we will use a Pull Request. Pull requests let your team give feedback on changes in topic branches before merging the code into the main branch. Reviewers can step through the proposed changes, leave comments, vote, and approve or reject the code.

### Objectives

After completing this lab, you will be able to:

- Create a pull request

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)
1.  [Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)
1.  [Exercise 3: Create a Local Topic Branch](#exercise-3-create-a-local-topic-branch)
1.  [Exercise 4: Complete the Work Item](#exercise-4-complete-the-work-item)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Return to your Azure DevOps Services browser, and click on Repos, then Files to view your code files in the browser.

1. [] Refresh the page if it was already open, then click on the **Create a pull request** link.

    !IMAGE[module2-exercise5-image1.png](module2-exercise5-image1.png)

1. [] Enter the pull request information to inform approvers or peer reviewers that you wish you to merge your code with the main branch.

    !IMAGE[module2-exercise5-image2a.png](module2-exercise5-image2a.png)

1. [] Click on the **Create** button to finish the process of creating a pull request.

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 6: Approve the Pull Request and Clean-Up Local Branches

### Introduction

In a real project, you will not be approving your own pull requests. However, in this hands-on lab, we will assume that you are able to do so.

### Objectives

After completing this lab, you will be able to:

- Approve pull requests in AZURE DEVOPS

- Clean up local branches using git

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)
1.  [Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)
1.  [Exercise 3: Create a Local Topic Branch](#exercise-3-create-a-local-topic-branch)
1.  [Exercise 4: Complete the Work Item](#exercise-4-complete-the-work-item)
1.  [Exercise 5: Create a Pull Request](#exercise-5-create-a-pull-request)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Go to the **Pull requests** list screen in Azure Repos.

    !IMAGE[module2-exercise6-image1.png](module2-exercise6-image1.png)

1. [] Click on the pull request you created in the previous exercise.

    !IMAGE[module2-exercise6-image2a.png](module2-exercise6-image2a.png)

1. [] Click on the **Files** tab.  As an approver or peer reviewer, you can review the changes in this Pull Request.  This provides a platform for communication at the code level.

    !IMAGE[module2-exercise6-image3a.png](module2-exercise6-image3a.png)

1. [] Ideally, we would want our application to return data from a database.  Enter a code comment on line 18 with the following message: +++Please check with your team and implement a data access project.  We should be returning data from the database for this REST API+++. Click the **Comment** button to submit your message.

    !IMAGE[module2-exercise6-image4.png](module2-exercise6-image4.png)

    > [!KNOWLEDGE] The comment you added is now transformed to a task that the pull request submitter can choose to solve or decide not to solve. This communication will be saved with the pull request and can help enhance the quality of the overall code base. For this demonstration, we will choose to solve this later in our sprint by adding a database and data access project to the solution.

1. [] As the submitter, you can now respond to the comments.  We will be implementing a database and data access project later in the sprint. Provide your feedback +++We will implement a data access and database project next week+++, and click on the **Reply & Resolve** button.

    !IMAGE[module2-exercise6-image5.png](module2-exercise6-image5.png)

1. [] Look to the top-right of the page, and click on the **Approve** button first, then click on the **Complete** button.  This will complete the Pull Request and merge the code changes you created in your branch to the main branch.

    !IMAGE[module2-exercise6-image6a.png](module2-exercise6-image6a.png)

1. [] To complete the merge:

    1. [] choose **Merge (no fast forward)** from the Merge Type drop-down list,
    1. [] check the box next to **Complete associated work items after merging** (this will move your work item to the Resolved status and the Done column on the Web CRM board), and
    1. [] check the box next to **Delete topics/tb-### after merging**.

    !IMAGE[module2-exercise6-image7.png](module2-exercise6-image7.png)

    > [!KNOWLEDGE] **Merge (no fast-forward)**
This is the default integration strategy in Azure Repos, GitHub and most other Git providers. It emulates running git merge pr from the main branch. All the individual commits in the pull request branch are preserved as-is, and a new merge commit is created to unite the main branch and the pull request branch.  This strategy is helpful because it illustrates exactly how a developer (or developers) worked on a pull request, including each individual commit along the way. It gives the most insight into how a branch evolves, but since it preserves every commit is may be very verbose.

    > [!KNOWLEDGE] **Squash Commit**
Squashing will take the tree that’s produced in a merge and creates a single new commit with those repository contents. It emulates running git merge pr --squash from the main branch. The resulting commit is not a merge commit; those individual commits that made up the pull request are discarded. When this strategy is used, history is reminiscent of a centralized version control system. Each pull request becomes a single commit in main, and there are no merges, just a simple, straight, linear history. Individual commits are lost, which is best for teams that use “fix up” commits or do not carefully craft individual commits for review before pushing them.

    > [!KNOWLEDGE] **Rebase**
Rebase will take each individual commit in the pull request and cherry-pick them onto the main branch. It emulates running git rebase main on the pull reuqest branch, followed by git merge pr --ff-only on the main branch. When this strategy is used, history is straight and linear, like it is with the “squash” option, but each individual commit is retained. This is useful for teams that practice careful commit hygeine, where each individual commit stands on its own.

    > [!KNOWLEDGE] **Semi-Linear Merge**
This strategy is the most exotic – it’s a mix of rebase and a merge. First, the commits in the pull request are rebased on top of the main branch. Then those rebased pull requests are merged into main branch. It emulates running git rebase main on the pull request branch, followed by git merge pr --no-ff on the main branch.  Some people think of this as the best of both worlds: individual commits are retained, so that you can see how the work evolved, but instead of just being rebased, a “merge bubble” is shown so that you can immediately see the work in each individual pull request.

1. [] Clean up local branches.  Since branches are short-lived in our workflow, we need to delete them.   Switch to the local main branch (from the PowerShell window) by issuing the following command:

    ```Powershell-linenums
    git checkout main
    ```

1. [] Pull the changes from the remote main branch, which is now ahead of your local main branch, so that your local main branch us up-to-date with the remote:

    ```PowerShell-linenums
    git pull
    ```

1. [] Delete the local topic branch. 

    >[!alert] Use the right branch name from your session.

    ```PowerShell-linenums
    git branch -d topics/tb-###
    ```

1. [] Delete the remote tracking branch.

    >[!alert] Remember to type **origin/** in front of your branch name.

    ```Powershell-linenums
    git branch -dr origin/topics/tb-###
    ```
    
    !IMAGE[module2-exercise6-image8a.png](module2-exercise6-image8a.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 7: Add Docker Support

### Introduction

Containers are a standardized unit of software that allows developers to isolate their app from its environment, solving the “it works on my machine” headache.  In this exercise we will implement Docker containers to isolate ourselves and introduce a platform for continuous integration, shift-left testing, and agility in our development cycle.

### Objectives

After completing this lab, you will be able to:

- Add docker support
- Build and test a Docker container

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Exercise 1: Create a Sample Project](#exercise-1-create-a-sample-project)
1.  [Exercise 2: Create a Remote Topic Branch](#exercise-2-create-a-remote-topic-branch)
1.  [Exercise 3: Create a Local Topic Branch](#exercise-3-create-a-local-topic-branch)
1.  [Exercise 4: Complete the Work Item](#exercise-4-complete-the-work-item)
1.  [Exercise 5: Create a Pull Request](#exercise-5-create-a-pull-request)
1.  [Exercise 6: Approve the Pull Request and Clean Up Local Branches](#exercise-6-approve-the-pull-request-and-clean-up-local-branches)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Return to the Web CRM Team board

    !IMAGE[module2-exercise7-image1.png](module2-exercise7-image1.png)

1. [] In the Backlog column, click on **+ New Item**, and create a work item titled +++Add Docker Support+++

1. [] Move the **Add Docker Support** work item to the Planned column.  It will be assigned to you and be set in the current sprint.

1. [] Move the **Add Docker Support** work item to In Progress - Doing column.  This action communicates what work you are currently implementing.

    > [!KNOWLEDGE] Typically a team will decide on a work flow process that works for them.  In this method, we will *pull* work into *doing* and *push* completed work into *done*.  This allows for visual communication about what a team member has completed, but is waiting on a pull request to complete or a test to complete for the work item to finally be automatically moved into the Done column.

    !IMAGE[module2-exercise7-image2.png](module2-exercise7-image2.png)

1. [] Click on the **Add Docker Support** work item

1. [] Under the Development section located on the right-side of the work item, click on **create a branch** to create a topic branch.

    > [!ALERT] Take note of your work item ID.  This is found in the top-left corner of the work item.  When we create a topic branch, we use the naming convention of 'topics/tb-###' where ### is the ID of the work item.

    !IMAGE[module2-exercise7-image3a.png](module2-exercise7-image3a.png)

1. [] Return to your PowerShell session and fetch the new branch.

    1. [] Fetch, or ask, your remote (Azure DevOps Services) of there are any new branches.  Make sure you are in the **c:\hol\ModernApiAppSolution\ModernApiApp** folder.
    
    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernApiAppSolution\ModernApiApp'
    git fetch
    ```

    !IMAGE[module2-exercise7-image4a.png](module2-exercise7-image4a.png)

1. [] Checkout the remote topic branch.  This will create a local branch on your computer with the same name

    1. [] Checkout remote topic branch
    
    ```PowerShell-linenums
    git checkout topics/tb-###
    ```
    > [!ALERT] Remember to use your topic branch name from step 6

    !IMAGE[module2-exercise7-image5a.png](module2-exercise7-image5a.png)

1. [] Return to Visual Studio Code

1. [] Create a file named +++Dockerfile+++ in the **ModernApiApp** project folder.

    > [!KNOWLEDGE] A Dockerfile defines the contents and startup behavior of a single container.  Our ModernApiApp will be a container.

    !IMAGE[module2-exercise7-image6.png](module2-exercise7-image6.png)

1. [] Copy the following content into it:

    ```Docker
    # See https://docs.docker.com/engine/reference/builder/ for command reference

    FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
    WORKDIR /app
    EXPOSE 80
    EXPOSE 443

    FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
    WORKDIR /src
    COPY ["ModernApiApp.csproj", "./"]
    RUN dotnet restore "./ModernApiApp.csproj"
    RUN mkdir "C:\Program Files\dotnet\sdk\NuGetFallbackFolder"
    COPY . .
    WORKDIR "/src/."
    RUN dotnet build "ModernApiApp.csproj" -c Release -o /app/build

    FROM build as publish
    RUN dotnet publish "ModernApiApp.csproj" -c Release -o /app/publish

    FROM base as final
    WORKDIR /app
    COPY --from=publish /app/publish .
    ENTRYPOINT [ "dotnet", "ModernApiApp.dll" ]
    ```

1. [] Create a **.dockerignore** file to help with the size of the containers.  Just like the .gitignore, the .dockerignore file will not copy unecessary files to the resulting container.

    1. [] Add a new file named +++.dockerignore+++

    1. [] Add the following lines into your **.dockerignore** file

        ```Docker-linenums
        **/.classpath
        **/.dockerignore
        **/.env
        **/.git
        **/.gitignore
        **/.project
        **/.settings
        **/.toolstarget
        **/.vs
        **/.vscode
        **/*.*proj.user
        **/*.dbmdl
        **/*.jfm
        **/azds.yaml
        **/bin
        **/charts
        **/docker-compose*
        **/Dockerfile*
        **/node_modules
        **/npm-debug.log
        **/obj
        **/secrets.dev.yaml
        **/values.dev.yaml
        README.md
        ```

    !IMAGE[module2-exercise7-image7.png](module2-exercise7-image7.png)

1. [] Right-click on the Dockerfile, then left-click on **Build Image...** in the context menu.  This will use the integrated Docker extension to build a Docker image.

    !IMAGE[module2-exercise7-image8.png](module2-exercise7-image8.png)

1. [] After left-clicking on **Build Image...**, immediately look to the top-middle (Command Window) of Visual Studio Code.  Press ENTER to accept the default tag.

    !IMAGE[module2-exercise7-image9.png](module2-exercise7-image9.png)

1. [] The container is built and ready when you see **"Successfully built..."** and **"Successfully tagged ..."** messages at the end of the process.

    !IMAGE[module2-exercise7-image10.png](module2-exercise7-image10.png)

1. [] Using your PowerShell window, run the following command.  Wait for the prompt to return, then you are safe to open a browser and test your container.

    ```PowerShell-linenums
    docker run -d -p 8080:80 --name modernapiapp modernapiapp
    ```

1. [] Open a browser and navigate to +++http://localhost:8080/api/customers+++ to test your application is returning data from within the Docker container.  Once tested successfully, close your browser window or tab.

1. [] Stop and remove your Docker containers.  We will continue to build new ones as we add more functionality to the project.

    1. [] Stop all running Docker containers

    ```PowerShell-linenums
    docker stop $(docker ps -a -q)
    ```

    1. [] Remove all Docker containers

    ```PowerShell-linenums
    docker rm $(docker ps -a -q)
    ```

1. [] From your PowerShell session, stage, commit, and push your changes:

    1. [] Stage your changes in Git using:

        ```PowerShell-linenums
        cd c:\hol\ModernApiAppSolution\ModernApiApp
        git add *
        ```
    1. [] Commit the changes to the topic branch:

        ```PowerShell-linenums
        git commit -m 'Created Dockerfile and .dockerignore file'
        ```

    1. [] Push the changes to the remote topic branch:

        ```PowerShell-linenums
        git push
        ```

    !IMAGE[module2-exercise7-image11.png](module2-exercise7-image11.png)

1. [] We have tested our container and it is returning data.  Keeping to our work item workflow, return to Azure DevOps Services and *push* your work item into **In Progress - Done** column.  This signals that you have completed this action and are now waiting for tests, pull requests, or other actions that will move your work item to Done.

    !IMAGE[module2-exercise7-image14.png](module2-exercise7-image14.png)

1. [] Create a new pull request for your changes. In Azure DevOps Services, click on **Repos** section then click on Files.  Click on **Create a pull request** button to start the process, then click on the **Create** button in the next page.

    !IMAGE[module2-exercise7-image12.png](module2-exercise7-image12.png)

1. [] Complete the pull request by clicking on **Approve**, then **Complete** to merge the changes to the main branch.  By clicking on **Approve** then **Complete** you are acting as a peer reviewer or code reviewer.  This action also moves your work item into the Done column on your board.

    !IMAGE[module2-exercise7-image13a.png](module2-exercise7-image13a.png)

1. [] Clean up your local branches after you complete the pull request

    1. [] Switch from your local branch to your main branch.
    
        ```PowerShell-linenums
        git checkout main
        ```

    1. [] At this point all your work has been on the topic branch which has now been merged into the remote main branch.  Your local main branch is now behind the remote main branch.  You must *pull* the changes that have been merged into the remote main to your local main.

        ```PowerShell-linenums
        git pull
        ```
    
    1. [] Delete your local branch

        ```PowerShell-linenums
        git branch -d topics/tb-###
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.
    
    1. [] Delete your remote tracking

        ```PowerShell-linenums
        git branch -dr origin/topics/tb-##
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===
##### <span class="module">Module 2</span>: <span class="title">Development & Test</span>
# Lab 3: Shift-Left Testing

### Introduction

In this lab, you will learn about shift-left testing and how to incorporate test driven development (TDD) through test projects and integration tests.  The lab exercises listed below will guide you through the process.

### Objectives

After completing this lab, you will be able to:

- Add a test project

- Add unit tests

- Understand dependency injection

- Add integration tests

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Estimated Time to Complete This Lab

90 minutes

### For More Information

Testing in Visual Studio: [https://www.visualstudio.com/vs/testing-tools/](https://www.visualstudio.com/vs/testing-tools/)

===

# Exercise 1: Adding a Test Project

### Introduction

In this exercise, you will add a unit testing project and eventually add tests using Test Driven Development (TDD).

### Objectives

After completing this lab, you will be able to:

- Create a test project

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Return to the Web CRM Team board

    !IMAGE[module2-lab3-exercise2-image1.png](module2-lab3-exercise2-image1.png)

1. [] In the Backlog column, click on **+ New Item**, and create a work item titled +++Create Customers Controller Unit Test+++

1. [] Move the **Create Customers Controller Unit Test** work item to the Planned column.  It will be assigned to you and be set in the current sprint.

1. [] Move the **Create Customers Controller Unit Test** work item to In Progress - Doing column.  This action communicates what work you are currently implementing.

    > [!KNOWLEDGE] We will *pull* work into *doing* and *push* completed work into *done*.  This allows for visual communication about what a team member has completed, but is waiting on a pull request to complete or a test to complete for the work item to finally be automatically moved into the Done column.

    !IMAGE[module2-lab3-exercise2-image2.png](module2-lab3-exercise2-image2.png)

1. [] Click on the **Create Customers Controller Unit Test** work item

1. [] Under the Development section located on the right-side of the work item, click on **create a branch** to create a topic branch.

    > [!ALERT] Take note of your work item ID.  This is found in the top-left corner of the work item.  When we create a topic branch, we use the naming convention of 'topics/tb-###' where ### is the ID of the work item.

    !IMAGE[module2-lab3-exercise2-image3a.png](module2-lab3-exercise2-image3a.png)

1. [] In your PowerShell session, fetch the new branch.

    1. [] Fetch, or ask, your remote (Azure DevOps Services) of there are any new branches.  Make sure you are in the **c:\hol\ModernApiAppSolution** folder.
    
    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    git fetch
    ```

1. [] Checkout the remote topic branch.  This will create a local branch on your computer with the same name

    1. [] Checkout remote topic branch
    
    ```PowerShell-linenums
    git checkout topics/tb-###
    ```
    > [!ALERT] Remember to use your topic branch name from step 6

1. [] Create a new test project in the **c:\hol\ModernApiAppSolution** folder.  We will use this project to write tests.  These tests will exercise code we write in the **ModernApiApp** project folder and help us with higher quality code.

    1. [] Create the test project

        ```PowerShell-linenums
        cd c:\hol\ModernApiAppSolution
        dotnet new mstest --name ModernApiApp.Tests
        rm c:\hol\ModernApiAppSolution\ModernApiApp.Tests\UnitTest1.cs
        ```

1. [] Verify **ModernApiApp.Tests** and **ModernApiApp** projects build successfully. Open a PowerShell window and use the following commands.

    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    dotnet add .\ModernApiApp.Tests\ModernApiApp.Tests.csproj reference .\ModernApiApp\ModernApiApp.csproj
    dotnet build ModernApiApp\ModernApiApp.csproj
    dotnet build ModernApiApp.Tests\ModernApiApp.Tests.csproj
    ```
    > [!KNOWLEDGE] The **dotnet add .\ModernApiApp.Tests\ModernApiApp.Tests.csproj reference .\ModernApiApp\ModernApiApp.csproj** command allows the new test project to refer to code in the ModernApiApp project.

1. [] Run all the tests in the new test project.

    ```PowerShell-linenums
    dotnet test ModernApiApp.Tests\ModernApiApp.Tests.csproj
    ```

    >[!note]You will get a warning saying that there are no tests available in your test project. We will add tests in the next exercise.

    !IMAGE[module2-lab3-exercise1-image2.png](module2-lab3-exercise1-image2.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 2: Test Driven Development

### Introduction

In this exercise, you will add a unit test to your testing project.

### Objectives

After completing this lab, you will be able to:

- Create and add a unit test

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Exercise 1: Adding a Test Project](#exercise-1-adding-a-test-project)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Return to Visual Studio Code and create a new file named +++CustomersControllerTests.cs+++ in the root of the **ModernApiApp.Tests** project folder.  This file will host all the unit tests for the customers controller that is found in the ModernApiApp project folder.

    !IMAGE[module2-lab3-exercise2-image5.png](module2-lab3-exercise2-image5.png)

1. [] Add the following code in the **CustomersControllerTests.cs** file. This contains a method named **TestGetCustomerById\_ShouldReturnAValidCustomerWhenGivenAValidId** which will "call upon" the CustomersController.cs file in the **ModernApiApp** project.

    ```CustomersControllerTests.cs
    using Microsoft.VisualStudio.TestTools.UnitTesting;
    using ModernApiApp.Controllers;

    namespace ModernApiApp.Tests
    {
        [TestClass]
        public class CustomersControllerTests
        { 
            [TestMethod]
            public void TestGetCustomerById_ShouldReturnAValidCustomerWhenGivenAValidId()
            {
                //Arrange
                var customersControllerUnderTest = new CustomersController();
                const int idUnderTest = 1;
                //Act
                var returnedResult = customersControllerUnderTest.GetById(idUnderTest);
                //Assert
                Assert.IsNotNull(returnedResult, $"The GetbyId method didn't return any customer for ID= {idUnderTest}");
                Assert.AreEqual(typeof(ModernApiApp.Models.Customer),returnedResult.GetType(),$"The GetbyId method returned the wrong type, {returnedResult.GetType().ToString()} instead of {typeof(ModernApiApp.Models.Customer)}");
            }
        }
    }
    ```

1. [] The Visual Studio Code problem detector will indicate that the method **GetById()** does not exist in the CustomersController.cs file found in the ModernApiApp project folder.  This is a "early warning" system indicating that we should correct these issues before proceding.

    !IMAGE[module2-lab3-exercise2-image6.png](module2-lab3-exercise2-image6.png)

    > [!KNOWLEDGE] Here we are witnessing how test driven development becomes the outline of the program.  Asking for a method to test our customers controller when that method does not exist means we need to create this method.  It is a way that we develop an application based on how we would like to test.

1. [] Go to the CustomersController.cs file found in the **ModernApiApp** project, and add the GetById() method:

    ```CustomersController.cs
    [HttpGet]
    public Object GetById(int id)
    {
        throw new NotImplementedException();
    }
    ```

    !IMAGE[module2-lab3-exercise2-image8.png](module2-lab3-exercise2-image8.png)

1. [] Save all your changes in Visual Studio Code.  Click on **File** -> **Save All** in Visual Studio Code.

1. [] From the PowerShell window, run the following commands to build the **ModernApiApp**, **ModernApiApp.Tests** projects and run the unit test:

    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    dotnet build ModernApiApp/ModernApiApp.csproj
    dotnet build ModernApiApp.Tests/ModernApiApp.Tests.csproj
    dotnet test ModernApiApp.Tests/ModernApiApp.Tests.csproj
    ``` 

    !IMAGE[module2-lab3-exercise2-image9.png](module2-lab3-exercise2-image9.png)

    >[!note] This test is now failing because the code is returning an exception. This is the exception that we have put in place to remind us that we haven't yet written the necessary code for the method.

1. [] Replace the **GetById()** method in the **CustomersController.cs** file with the following code.  This file will be open in Visual Studio Code.

    ```CustomersController.cs
    [HttpGet]
    public IActionResult GetById(int id)
    {
        Customer customer = null;
        if (id > 0)
        {
            customer = new Customer(){Id= id, Name = $"Customer {id }" , Address = $"{(id) * 100} Main St"  };
        }
        return new ObjectResult(customer);
    }
    ```

    > [!KNOWLEDGE] We are now removing the *throw new NotImplementedException()* with code that will begin to test our CustomersController.cs controller.  Once we have changed the GetById() method to return a Customer, we need to update our unit tests as well.

1. [] Replace the unit test code in the **CustomersControllerTests.cs** file with the following code.  You can find the **CustomersControllerTests.cs** file in the **c:\hol\ModernApiAppSolution\ModernApiApp.Tests** project folder.

    1. [] Update the using statements in the CustomersControllerTests.cs file and add the lines below

        ```CustomersControllerTests.cs
        using Microsoft.AspNetCore.Mvc;
        using ModernApiApp.Models;
        ```
    
    1. [] Replace the existing **TestGetCustomerById_ShouldReturnAValidCustomerWhenGivenAValidId()** method with the following code:

        ```CustomersControllerTests.cs
        [TestMethod]
        public void TestGetCustomerById_ShouldReturnAValidCustomerWhenGivenAValidId()
        {
            //Arrange
            var customersControllerUnderTest = new CustomersController();
            const int idUnderTest = 1;
            //Act
            var returnedResult = customersControllerUnderTest.GetById(idUnderTest);
            //Assert
            Assert.IsNotNull(returnedResult, $"The GetbyId method didn't return any customer for ID= {idUnderTest}");
            Assert.AreEqual(returnedResult.GetType(), typeof(ObjectResult),
            $"The GetbyId returned type: {returnedResult.GetType()} instead of {typeof(ObjectResult)}" );
            Assert.IsInstanceOfType((returnedResult as ObjectResult).Value, typeof(Customer), 
            $"The object result returned GetbyId contains type: {(returnedResult as ObjectResult).Value.GetType()} instead of {typeof(Customer)}");
            Customer returnedCustomer = (Customer)(returnedResult as ObjectResult).Value;
            Assert.AreEqual(idUnderTest, returnedCustomer.Id,
            $"The customer result returned GetbyId has Id: {returnedCustomer.Id} instead of {idUnderTest}");
        }
        ```

    !IMAGE[module2-lab3-exercise2-image11.png](module2-lab3-exercise2-image11.png)

1. [] Save all your changes (**File** -> **Save All**), build the **ModernApiApp**, and **ModernApiApp.Tests** projects, then run the unit test.  Make sure you are in the **c:\hol\ModernApiAppSolution** folder:

    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    dotnet build ModernApiApp/ModernApiApp.csproj
    dotnet build ModernApiApp.Tests/ModernApiApp.Tests.csproj
    dotnet test ModernApiApp.Tests/ModernApiApp.Tests.csproj
    ```

    !IMAGE[module2-lab3-exercise2-image12.png](module2-lab3-exercise2-image12.png)

1. [] From your PowerShell session, stage, commit, and push your changes:

    1. [] Stage your changes in Git using:

        ```PowerShell-linenums
        cd c:\hol\ModernApiAppSolution
        git add *
        ```
    1. [] Commit the changes to the topic branch:

        ```PowerShell-linenums
        git commit -m 'Created CustomersController Unit Test'
        ```

    1. [] Push the changes to the remote topic branch:

        ```PowerShell-linenums
        git push
        ```

1. [] We have tested our unit test and it is successfully testing our CustomersController.cs file and code.  Keeping to our work item workflow, return to Azure DevOps Services and *push* your work item into **In Progress - Done** column.  This signals that you have completed this action and are now waiting for tests, pull requests, or other actions that will move your work item to Done.

    !IMAGE[module2-lab3-exercise2-image13.png](module2-lab3-exercise2-image13.png)

1. [] Create a new pull request for your changes. In Azure DevOps Services, click on **Repos** section then click on Files.  Click on **Create a pull request** button to start the process, then click on the **Create** button in the next page.

    !IMAGE[module2-lab3-exercise2-image14.png](module2-lab3-exercise2-image14.png)

1. [] Complete the pull request by clicking on **Approve**, then **Complete** to merge the changes to the main branch.  By clicking on **Approve** then **Complete** you are acting as a peer reviewer or code reviewer.  This action also moves your work item into the Done column on your board.

    !IMAGE[module2-lab3-exercise2-image15a.png](module2-lab3-exercise2-image15a.png)

1. [] Clean up your local branches after you complete the pull request

    1. [] Switch from your local branch to your main branch.
    
        ```PowerShell-linenums
        git checkout main
        ```

    1. [] At this point all your work has been on the topic branch which has now been merged into the remote main branch.  Your local main branch is now behind the remote main branch.  You must *pull* the changes that have been merged into the remote main to your local main.

        ```PowerShell-linenums
        git pull
        ```
    
    1. [] Delete your local branch

        ```PowerShell-linenums
        git branch -d topics/tb-###
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.
    
    1. [] Delete your remote tracking

        ```PowerShell-linenums
        git branch -dr origin/topics/tb-##
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Dependency Injection

### Introduction

The project you are currently uses simple code but it is hard to test because of dependencies. We will implement the dependency injection (DI) software design pattern, which is a technique for achieving Inversion of Control (IoC) between classes and their dependencies.

Dependency inversion is a key part of building loosely coupled applications, since implementation details can be written to depend on and implement higher-level abstractions, rather than the other way around. The resulting applications are more **testable**, **modular**, and **maintainable** as a result. The practice of dependency injection is made possible by following the dependency inversion principle.

Consider the following line of code in your CustomersControllerTests.cs file, which is how the tests starts:

```-nocopy
var customersControllerUnderTest = new CustomersController();
```

Every time you instantiate a new customers controller, all its dependencies have to be instantiated. This means that the unit test might have a dependency on a real database connection, a web service connection, or another system dependency. It also means that there might be a dependency on specific data in the database. There are few disadvantages to this approach:

- Unit tests take longer to run,

- unit tests running on a build server will need access to a database server, and

- data can get corrupted if multiple tests are modifying it.

In addition, this is an example with one dependency only. If your application had more dependencies, then setting up tests becomes even harder.

Let's implement dependency injection into our project and our tests. The goal from covering it in this hands-on lab is to realize the value it adds to make your code more **testable**.

We will add few things to the solution:

- A **data access project** containing an entity framework core data context, a Repository implementation and a Unit of work implementation.

- An **entities project** containing the models that will be served by our Api.

Instead of having you do a lot of typing, we have provided you with all the required code. You will then extend the provided code by adding more tests.

### Objectives

After completing this lab, you will be able to:

- Understand and use dependency injection

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Exercise 1: Adding a Test Project](#exercise-1-adding-a-test-project)
1.  [Exercise 2: Test Driven Development (TDD)](#exercise-2-test-driven-development)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Tasks

1. [] Return to the Web CRM Team board

    !IMAGE[module2-lab3-exercise3-image1.png](module2-lab3-exercise3-image1.png)

1. [] In the Backlog column, click on **+ New Item**, and create a work item titled +++Create Database and Data Access Project+++

1. [] Move the **Create Database and Data Access Project** work item to the Planned column.  It will be assigned to you and be set in the current sprint.

1. [] Move the **Create Database and Data Access Project** work item to In Progress - Doing column.  This action communicates what work you are currently implementing.

    > [!KNOWLEDGE] We will *pull* work into *doing* and *push* completed work into *done*.  This allows for visual communication about what a team member has completed, but is waiting on a pull request to complete or a test to complete for the work item to finally be automatically moved into the Done column.

    !IMAGE[module2-lab3-exercise3-image2.png](module2-lab3-exercise3-image2.png)

1. [] Click on the **Create Database and Data Access Project** work item

1. [] Under the Development section located on the right-side of the work item, click on **create a branch** to create a topic branch.

    > [!ALERT] Take note of your work item ID.  This is found in the top-left corner of the work item.  When we create a topic branch, we use the naming convention of 'topics/tb-###' where ### is the ID of the work item.

    !IMAGE[module2-lab3-exercise3-image3a.png](module2-lab3-exercise3-image3a.png)

1. [] In your PowerShell session, fetch the new branch.

    1. [] Fetch, or ask, your remote (Azure DevOps Services) of there are any new branches.  Make sure you are in the **c:\hol\ModernApiAppSolution** folder.
    
    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    git fetch
    ```

1. [] Checkout the remote topic branch.  This will create a local branch on your computer with the same name

    1. [] Checkout remote topic branch
    
    ```PowerShell-linenums
    git checkout topics/tb-###
    ```
    > [!ALERT] Remember to use your topic branch name from step 6

1. [] We will add the necessary projects to your solution that will bring in a database.  Issue the following command to copy a prepared solution over your existing solution from the lab material folder:

    ```PowerShell-linenums
    cd c:\hol
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 3 - Dependency Injection\ModernApiAppSolution' -Destination 'c:\hol\' -Force -Recurse
    cd c:\hol\ModernApiAppSolution
    ```

1. [] Run the following script to restore all the projects you have copied

    ```PowerShell-linenums
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    .\restoreApiSolutionLocally.ps1
    ```
    
    !IMAGE[](media/image148.png#eighty)

1. [] Stop and remove all running containers

    ```PowerShell-linenums
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    ```

1. [] Use the following command to build the docker images required for the application and run them as containers.

    ```PowerShell-linenums
    docker-compose -f 'dc.ApiApp.yml' up -d --build
    ```

    >[!note] This command builds two containers, one for the API application and one for the SQL database and opens all the required ports so that the two containers can exchange data.

1. [] You can review your containers by issuing the following command

    ```PowerShell-linenums
    docker ps
    ```

    !IMAGE[](media/image149.png#eighty)

1. [] Navigate to +++http://localhost:8080/api/customers+++.  You should return a list of five customers.

1. [] Stop the composed infrastructure (containers and network).

    ```PowerShell-linenums
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    ```

1. [] From your PowerShell session, stage, commit, and push your changes:

    1. [] Stage your changes in Git using:

        ```PowerShell-linenums
        cd c:\hol\ModernApiAppSolution
        git add *
        ```
    1. [] Commit the changes to the topic branch:

        ```PowerShell-linenums
        git commit -m 'Included Database and Data Access Projects to the Solution'
        ```

    1. [] Push the changes to the remote topic branch:

        ```PowerShell-linenums
        git push
        ```

1. [] We have tested our database and data access project in the solution. We also have successfully implemented dependency injection letting us test our API without having to run the container.  Keeping to our work item workflow, return to Azure DevOps Services and *push* your work item into **In Progress - Done** column.  This signals that you have completed this action and are now waiting for tests, pull requests, or other actions that will move your work item to Done.

    !IMAGE[module2-lab3-exercise3-image4.png](module2-lab3-exercise3-image4.png)

1. [] Create a new pull request for your changes. In Azure DevOps Services, click on **Repos** section then click on Files.  Click on **Create a pull request** button to start the process, then click on the **Create** button in the next page.

    !IMAGE[module2-lab3-exercise3-image5.png](module2-lab3-exercise3-image5.png)

1. [] Complete the pull request by clicking on **Approve**, then **Complete** to merge the changes to the main branch.  By clicking on **Approve** then **Complete** you are acting as a peer reviewer or code reviewer.  This action also moves your work item into the Done column on your board.

1. [] Clean up your local branches after you complete the pull request

    1. [] Switch from your local branch to your main branch
    
        ```PowerShell-linenums
        git checkout main
        ```

    1. [] At this point all your work has been on the topic branch which has now been merged into the remote main branch.  Your local main branch is now behind the remote main branch.  You must *pull* the changes that have been merged into the remote main to your local main.

        ```PowerShell-linenums
        git pull
        ```
    
    1. [] Delete your local branch

        ```PowerShell-linenums
        git branch -d topics/tb-###
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.
    
    1. [] Delete your remote tracking

        ```PowerShell-linenums
        git branch -dr origin/topics/tb-##
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.

1. [] Return to Visual Studio Code

1. [] Expand the **ModernApiApp.DataAccess** project files.

1. [] Open and examine the **ApiContext.cs** file.

    ```ModernApiApp.DataAccess-nocopy
    public partial class ApiContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }
        public ApiContext()
        {
        }
        public ApiContext(DbContextOptions<ApiContext> options) : base(options) { }
    }
    ```

    >[!note] This class defines the entity framework datacontext which is the class that manages the communication with the database. The class however doesn't know where the database is and will get that information at runtime. This allows us to swap a database for each environment and allows us to use in memory databases as well, while keeping the same data schema.

1. [] Open and examine the **IRepository.cs** file.

    ```IRepository.cs-nocopy
    public interface IRepository<TEntity> where TEntity : class
    {
        void Delete(TEntity entity);
        void Edit(TEntity entity);
        IQueryable<TEntity> GetAll();
        Task<TEntity> GetByIdAsync(int id);
        void Add(TEntity entity);
        IQueryable<TEntity> SearchFor(System.Linq.Expressions.Expression<Func<TEntity, bool>> predicate);
    }
    ```

    >[!note] This class defines the database operations that will be exposed to the other application layers. It is also generic, allowing it to be used with any entity (data table). This approach allows us to unify the way we communicate with any database entity. Hence minimizing the code we have to test for data access, and making sure enhancements or bug fixes to this class positively impact the overall project.

1. [] Open the file **IUnitOfWork.cs**.

    ```IUnitOfWork.cs-nocopy
    public interface IUnitOfWork<TDbContext> where TDbContext : DbContext, new()
    {
        TDbContext DbContext { get; }
        System.Threading.Tasks.Task<int> SaveAsync();
    }
    ```

    >[!note] This interface defines the unit of work operations which include persisting any operations performed by one or many repositories. It allows our database operations to be atomic.

    >[!knowledge]For more information on the Repository and Unit of Work design patterns, refer to the following:       [https://www.martinfowler.com/eaaCatalog/unitOfWork.html](https://www.martinfowler.com/eaaCatalog/unitOfWork.html)
    >
    [https://www.martinfowler.com/eaaCatalog/repository.html](https://www.martinfowler.com/eaaCatalog/repository.html)

1. [] Expand the **ModernApiApp** project files.

1. [] Open the **Startup.cs** file.

    ```Startup.cs-nocopy
    public Startup(IConfiguration configuration)
    {
        Configuration = configuration;
    }
    public IConfiguration Configuration { get; }
    
    // This method gets called by the runtime. Use this method to add services to the container.
    public void ConfigureServices(IServiceCollection services)
    {
        var connectionString = buildConnectionString();
        services.AddDbContext<ApiContext>(options =>   options.UseSqlServer(
                                connectionString,
                                b => b.MigrationsAssembly("ModernApiApp")
                                )
                            );
        services.AddTransient<IUnitOfWork<ApiContext>, UnitOfWork<ApiContext>>();
        services.AddMvc();
    }
    ```

    >[!note] Notice how in the ConfigureServices method, we register an ApiContext, we ask it to use SQL server and we give it a connection string. Any other class in the project that needs an ApiContext will simply ask for one, without needing to know of the details about what kind of database it is or where it is. This is an example of the concept of dependency injection.
    >
    Notice also how the buildConnectionString method builds a connectionString to the database, by **reading environment variables**. This allows secrets to be **stored within the environment** itself and allow us to easily **swap those secrets** during our release process.

1. [] Open the **CustomersController.cs** under the Controllers folder.

    ```CustomersController.cs-nocopy
    [Produces("application/json")]
    [Route("api/Customers")]
    public class CustomersController : Controller
    {
        IUnitOfWork<ApiContext> _uow;
        IRepository<Customer> _customerRepository;
        public CustomersController(IUnitOfWork<ApiContext> uow)
        {
            _uow = uow;
            _customerRepository = new Repository<Customer>(_uow.DbContext);
        }
        // GET api/customers
        [HttpGet]
        public IEnumerable<Customer> Get()
        {
            var customers = _customerRepository.GetAll().Take(10); 
            return customers.ToArray();
        }
        public IActionResult GetById(int id)
        {
            Customer customer = null;
            if (id > 0)
            {
                customer = new Customer() { Id = id, Name = $"Customer {id }", Address = $"{(id) * 100} Main St" };
            }
            return new ObjectResult(customer);
        }
    }
    ```

    >[!note] Notice how the controller simply expresses that it needs a UnitOfWork class containing an ApiContext, which will handle data persistence. It relies on **dependency injection**, to find the implementation in the services we registered in the **Startup.cs** class. The rest of the data access operations aren't aware of any of this injection.
    >
    The advantage of using such a pattern is that it allows to inject or swap the database context at runtime, which means that in our tests we will not need to use a real database.

1. [] Expand the **ModernApiApp.Tests** project files.

1. [] Open the **Stubs.cs** file in the **Mocks** folder.

    ```Stubs.cs-nocopy
    public static IUnitOfWork<ApiContext> setUpUnitOfWorkMock()
    {
        var options = new DbContextOptionsBuilder<ApiContext>()
            .UseInMemoryDatabase(databaseName: "InMemoryApiAppDatabase")
            .Options;
        _apiContext = new ApiContext(options);
        for (int i = 0; i < 100; i++)
        {
            _apiContext.Customers.Add(new Customer { Id = i + 1, Name = $"Name {i}", Address = $"{(i + 1) * 10} main street" });
        }
        _apiContext.SaveChanges();
        var uow = new UnitOfWork<ApiContext>(_apiContext);
        return uow;
    }
    ```

    >[!note] This method generates an IUnitWork for the ApiContext class that uses an entity framework in memory database.

1. [] Open the **CustomersControllerTests.cs** file.

    ```CustomersControllerTests.cs-nocopy
        using System.Linq;
        using Microsoft.AspNetCore.Mvc;
        using Microsoft.VisualStudio.TestTools.UnitTesting;
        using ModernApiApp.Controllers;
        using ModernApiApp.DataAccess;
        using ModernApiApp.Entities;
        using ModernApiApp.Tests.Mocks;
        
       namespace ModernApiApp.Tests
        {
            [TestClass]
            public class CustomersControllerTests {
                IUnitOfWork<ApiContext> _uow;
                Repository<Customer> _customerRepository;
                public CustomersControllerTests() {
                    _uow = Stubs.setUpUnitOfWorkMock();
                    _customerRepository = new Repository<Customer>(_uow.DbContext);
                }
                [TestMethod]
                public void TestGetCustomerById_ShouldReturnAValidCustomerWhenGivenAValidId() {
                    //Arrange
                    var customersControllerUnderTest = new CustomersController(_uow);
                    int idUnderTest = _customerRepository.GetAll().FirstOrDefault().Id;
                    //Act
                    var returnedResult = customersControllerUnderTest.GetById (idUnderTest);
                    //Assert
                    Assert.IsNotNull(returnedResult, $"The GetbyId method didn't return any customer for ID={idUnderTest}");
                    Assert.AreEqual(returnedResult.GetType(), typeof(OkObjectResult),$"The GetbyId returned type: {returnedResult.GetType()} instead of {typeof(OkObjectResult)}");
                    Assert.IsInstanceOfType((returnedResult as OkObjectResult).Value, typeof(Customer),$"The object result returned GetbyId contains type: {(returnedResult as OkObjectResult).Value.GetType()} instead of {typeof(Customer)}");
                    Customer returnedCustomer = (Customer)(returnedResult as OkObjectResult).Value;
                    Assert.AreEqual(idUnderTest, returnedCustomer.Id,$"The customer result returned GetbyId has Id: {returnedCustomer.Id} instead of {idUnderTest}");
                }
            }
        }
    ```

    >[!note] Notice how we inject by not having to worry about having a real database with real data at test time.
    
    >[!help] If this concept is still unclear, please ask your instructor to walk you through the code.

1. [] From your PowerShell, execute the following commands:

    ```PowerShell-linenums
    cd c:\hol\ModernApiAppSolution
    dotnet test ModernApiApp.Tests\ModernApiApp.Tests.csproj
    ```

    >[!note] Notice how the test is successful. We can invoke the API controller without using a real database.

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Designing for Testability

### Introduction

The application we have created so far, exposes data as a REST API. We are going now to add another application that uses the data from the REST API and evaluate how we would test such interactions.

### Objectives

After completing this lab, you will be able to:

- Add integration tests to a project

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Exercise 1: Adding a Test Project](#exercise-1-adding-a-test-project)
1.  [Exercise 2: Test Driven Development (TDD)](#exercise-2-test-driven-development)
1.  [Exercise 3: Dependency Injection](#exercise-3-dependency-injection)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0) 

### Tasks

1. [] Copy the **ModernUIAppSolution** directory from **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\**  to your **c:\hol** folder to create the user interface, or web experience, for the application.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\ModernUIAppSolution' -Destination 'c:\hol\' -Force -Recurse
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    ```

    1. [] Your folder structure should resemble the following in the **c:\hol** directory:

    !IMAGE[module2-lab3-exercise4-image1.png](module2-lab3-exercise4-image1.png)

1. [] Initialize a git repository in that folder, stage all files, and commit them locally.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution\'
    git init
    git add *
    git commit -m 'Created UI Project'
    ```
   
1. [] Return to your Azure DevOps Services.  Click on **Project Settings** found in the lower left part of the page, then locate the **Repos** section and click on **Repositories**.  Add another repository named +++ModernUIAppRepository+++.

    !IMAGE[module2-lab3-exercise4-image3.png](module2-lab3-exercise4-image3.png)

1. [] Push the code from your local **ModernUIAppSolution** folder to the **ModernUIAppRepository** on Azure DevOps Services.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    git remote add origin https://Student1-@lab.LabInstance.Id@dev.azure.com/Student1-@lab.LabInstance.Id/hol/_git/ModernUIAppRepository
    git push -u origin --all
    ```

    !IMAGE[module2-lab3-exercise4-image4a.png](module2-lab3-exercise4-image4a.png)

    >[!note]With two repositories in a parent folder containing all the code you may need, you can easily switch between working on the database, the REST API, or the UI, and  preserve modularity by having distinct repositories.
    >
    !IMAGE[module2-lab3-exercise4-image5a.png](module2-lab3-exercise4-image5a.png)
    >
    !IMAGE[module2-lab3-exercise4-image6.png](module2-lab3-exercise4-image6.png)
    >
    !IMAGE[module2-lab3-exercise4-image7.png](module2-lab3-exercise4-image7.png)
    >

    >[!NOTE] The web application will retrieve customer's data from the REST API you've built in the previous exercises and display it in web view. Our **first step** will be to capture this requirement.

1. [] To help with the complexity and size of the project we will copy some files to your project that will assist with the building and testing of both the API and UI components.  Copy the files in the **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\Scripts\\** folder to your **c:\\hol** folder.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\Scripts\*' -Destination 'c:\hol' -Force
    ```

    1. [] Your **c:\hol** directory contents should resemble the following:

    !IMAGE[module2-lab3-exercise4-image8.png](module2-lab3-exercise4-image8.png)

1. [] In your PowerShell window issue the following commands:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUI.ps1
    .\startApiandUI.ps1
    .\testAll.ps1
    ```

    >[!NOTE] These scripts do the following:
    >
    > **.\stopApiandUI.ps1**: This script will issue **docker stop** and **docker rm** to stop and remove all containers created by **.\startApiandUI.ps1**
    >
    > **.\startApiandUI.ps1**: This script will issue **docker-compose** using the dc.AllUp.yml file and create all the containers.  It will also issue Invoke-RestMethod cmdlet to verify that the REST API is accessible
    >
    > **.\testAll.ps1**: This script will issue the **dotnet test** command against the API and UI test projects
    >
    >**.\buildAll.ps1**: This script will issue the **dotnet build** command against all the projects in both solutions

1. [] Open your browser and navigate to +++http://localhost:9090/customers+++. You should receive the following web page:

    !IMAGE[module2-lab3-exercise4-image9.png](module2-lab3-exercise4-image9.png)

1. [] Stop all the running containers and clean up any unused docker images by using the following command:

    ```PowerShell-linenums
    .\stopApiAndUi.ps1
    ```

    >[!NOTE]This will be the process we use to build and run the application layers locally going forward.

    >[!KNOWLEDGE] We can test the API Layer separately. However, for us to test the user interface layer, we are **forced to have the whole system running**. Two additional layers. Let's try to understand why this is the case.

1. [] Open the **CustomersController.cs** class in the **ModernUIApp**.

    !IMAGE[module2-lab3-exercise4-image10.png](module2-lab3-exercise4-image10.png)

1. [] Notice how the class constructor **CustomersController(IConfiguration configuration)** has a dependency on the API layer.  You can see that in this constructor, we must instantiate a new **HttpClient()** so we can call the API. This results in a I/O operation during the test.

    ```CustomersController.cs-nocopy
    public class CustomersController : Controller
        {
            private HttpClient _customersApiClient;
            private string _customerApiUrl;
            public CustomersController(IConfiguration configuration)
            {
                _customersApiClient = new HttpClient();
                _customerApiUrl =   configuration.GetValue<string>("ApiURL");
            }
            public IActionResult Index()
            {
                var customers = getCustomersFromApi();
                return View(customers);
            }
    ```

    >[!NOTE] There are few options on how to work around this, to make our code more testable.  We can mock the HTTP client, then mock the API call return, or refactor the code and abstract completely where the data is coming from. The class would depend on an interface rather than a concrete implementation. We would be using the following and using this design pattern: [https://en.wikipedia.org/wiki/Bridge_pattern](https://en.wikipedia.org/wiki/Bridge_pattern).  We will use the Bridge Pattern to make our code more testable.

1. [] Copy the **Services** directory from **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\** to your **c:\\hol\\ModernUIAppSolution\\ModernUIApp\\** folder

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\Services' -Destination 'C:\hol\ModernUIAppSolution\ModernUIApp\' -Force -Recurse
    ```

    !IMAGE[module2-lab3-exercise4-image11.png](module2-lab3-exercise4-image11.png)

1. [] Copy the **CustomersController.cs** file from **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\Controllers\\CustomersController.cs** to your **c:\\hol\\ModernUIAppSolution\\ModernUIApp\\** folder

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\Controllers\CustomersController.cs' -Destination 'C:\hol\ModernUIAppSolution\ModernUIApp\Controllers\' -Force
    ```

    !IMAGE[module2-lab3-exercise4-image12.png](module2-lab3-exercise4-image12.png)

1. [] Locate and open in Visual Studio Code the **Startup.cs** file in your **ModernUIApp** project.  We will add a "using" statement and a new line of code to the **ConfigureServices()** method in this file.

    !IMAGE[module2-lab3-exercise4-image15.png](module2-lab3-exercise4-image15.png)

    1. [] Modify the code at the top of the file and add a new using statement after line 10:

    ```C#-linenums
    using ModernUIApp.Services;
    ```

    !IMAGE[module2-lab3-exercise4-image14.png](module2-lab3-exercise4-image14.png)

    1. [] Modify the **ConfigureServices(IServiceCollection services)** method and add the following line after line 27:

    ```C#-linenums
    services.AddScoped<ICustomerDataService, CustomerDataService>();
    ```
    !IMAGE[module2-lab3-exercise4-image16.png](module2-lab3-exercise4-image16.png)

    >[!KNOWLEDGE] This line of code declares which implementation should be used in the UI project, for the **ICustomerDataService** interface. Obviously, we will want the real implementation in this case **CustomerDataService**. This means that any controller or class that has such a dependency can simply declare that it needs an **ICustomerDataService** and the application will figure out which implementation of that interface needs to be used.
    >
    This also allows us to swap the real implementation with a **mocked** one during our tests, removing the hard dependency.

1. [] Copy the **Mocks** directory from **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\Mocks** to your **C:\\hol\\ModernUIAppSolution\\ModernUIApp.Tests** project folder.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\Mocks' -Destination 'C:\hol\ModernUIAppSolution\ModernUIApp.Tests\' -Force -Recurse
    ```

    !IMAGE[module2-lab3-exercise4-image17.png](module2-lab3-exercise4-image17.png)

1. [] Copy the **CustomersControllerTests.cs** file from the **C:\\DevOps Fundamentals Lab Material\\Lab 03 - Shift-Left Testing\\Exercise 4 - Designing for Testability\\Tests\\** folder to your **c:\\hol\\ModernUIAppSolution\\ModernUIApp.Tests** project folder.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 03 - Shift-Left Testing\Exercise 4 - Designing for Testability\Tests\CustomersControllerTests.cs' -Destination 'C:\hol\ModernUIAppSolution\ModernUIApp.Tests\' -Force
    ```

1. [] Save all your changes and run the PowerShell utility scripts in your **c:\\hol** folder.  We will test with the application up first:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUI.ps1
    .\startApiandUI.ps1
    .\testAll.ps1
    ```

1. [] Stop all running containers and now issue the tests.  Notice how the tests still executed and passed with the database unavailable for the UI:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUI.ps1
    .\testAll.ps1
    ```

1. [] Commit any pending changes on main:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    git add *
    git commit -m 'Created Mocks for UI'
    git push
    ```

    >[!NOTE] Note that we did not launch any of the applications to execute the tests. This was possible by removing the hard dependencies.
    >
   !IMAGE[module2-lab3-exercise4-image18.png](module2-lab3-exercise4-image18.png)
    >
    The Customers controller doesn't need to know where the data is coming from, it just declares that it need a data service.
    >
   !IMAGE[module2-lab3-exercise4-image19.png](module2-lab3-exercise4-image19.png)
    >
    The test class can then pass a **mocked** or **fake** data service, but still test the controller functionality.
    >
   !IMAGE[module2-lab3-exercise4-image20.png](module2-lab3-exercise4-image20.png)

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===
##### <span class="module">Module 2</span>: <span class="title">Development & Test</span>
# Lab 4: Feature Flags

### Introduction

In this lab, you will work with LaunchDarkly (launchdarkly.com) and implement a feature flag, exploring their available functionality.  Your flag will allow you to show your customer UI, or show a page that this feature is unavailable.

### Objectives

After completing this lab, you will be able to:

- Use Feature Flags effectively

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0)  

### Estimated Time to Complete This Lab

30 minutes

### For More Information

Microsoft and LaunchDarkly: [https://launchdarkly.com/microsoft/](https://launchdarkly.com/microsoft/)

LaunchDarkly: [https://launchdarkly.com/](https://launchdarkly.com/)

===

# Exercise 1: Create a Feature Flag

### Introduction

Feature flags are an important DevOps technique that makes the process of continuous delivery easier. They help with the following aspects of the release process:

- Nearly eliminate integration (merge) conflicts.

- Toggle features to hide, disable, or enable features at run-time.

- Revert a change deployed to production without rolling back your release.

- Present users with variants of a feature, to determine which one performs better.

### Objectives

After completing this lab, you will be able to:

- Understand and control feature flags to turn features on/off

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0) 

### Tasks

Implementing feature flags can either be achieved by building your own infrastructure or by leveraging one of the many products in the marketplace. In this hands-on lab, we have chosen the latter. We will use a product called LaunchDarkly. **Our choice is not a recommendation of the product**. You should evaluate the solution that best meet your needs.

1. [] Navigate to +++https://launchdarkly.com+++ and click on the **Start Trial** button in the top-right to create your **free trial version**.  Once your trial is setup, return to the lab.

1. [] Return to the Web CRM Team board

    !IMAGE[module2-lab4-exercise1-image1.png](module2-lab4-exercise1-image1.png)

1. [] In the Backlog column, click on **+ New Item**, and create a work item titled +++Implement Customer Management Feature Flag+++

1. [] Move the **Implement Customer Management Feature Flag** work item to the Planned column.  It will be assigned to you and be set in the current sprint.

1. [] Move the **Implement Customer Management Feature Flag** work item to In Progress - Doing column.  This action communicates what work you are currently implementing.

    > [!KNOWLEDGE] Typically a team will decide on a work flow process that works for them.  In this method, we will *pull* work into *doing* and *push* completed work into *done*.  This allows for visual communication about what a team member has completed, but is waiting on a pull request to complete or a test to complete for the work item to finally be automatically moved into the Done column.

    !IMAGE[module2-lab4-exercise1-image2.png](module2-lab4-exercise1-image2.png)

1. [] Click on the **Implement Customer Management Feature Flag** work item

1. [] Under the Development section located on the right-side of the work item, click on **create a branch** to create a topic branch.

    > [!ALERT] Take note of your work item ID.  This is found in the top-left corner of the work item.  When we create a topic branch, we use the naming convention of 'topics/tb-###' where ### is the ID of the work item.

    > [!ALERT] Choose the **ModernUIAppRepository** repository for this work item.

    !IMAGE[module2-lab4-exercise1-image3a.png](module2-lab4-exercise1-image3a.png)

1. [] Return to your PowerShell session and fetch the new branch.

    1. [] Fetch, or ask, your remote (Azure DevOps Services) of there are any new branches.  Make sure you are in the **c:\hol\ModernUIAppSolution** folder.
    
    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    git fetch
    ```

1. [] Checkout the remote topic branch.  This will create a local branch on your computer with the same name

    1. [] Checkout remote topic branch
    
    ```PowerShell-linenums
    git checkout topics/tb-###
    ```
    > [!ALERT] Remember to use your topic branch name from step 7

    !IMAGE[module2-lab4-exercise1-image5a.png](module2-lab4-exercise1-image5a.png)

1. [] Navigate to [Launch Darkly](https://launchdarkly.com), sign in using the trial account you created in step 1, then click on the **+ Flag** button located at the top right of the page to create a new feature flag.

    !IMAGE[module2-lab4-exercise1-image6.png](module2-lab4-exercise1-image6.png)

1. [] In the **Create a feature flag** window provide the following options:

    1. [] Name: +++Customer Management+++
    1. [] Key:  +++ff-customer-management+++
    1. [] Description: +++Control the showing or hiding of the CRM Program Teams customer management user interface.+++
    1. [] Tags: **CRM**, **Compete**, **MVP**
    1. [] Check the box for **SDKs using Mobile Key** and **SDKs using Client-side ID**
    1. [] Flag variations: **Boolean**
    1. [] Variation 1
        1. [] **true**
        1. [] Name: +++show-ui+++
        1. [] Description: +++Show the customers management UI+++
    1. [] Variation 2
        1. [] **false**
        1. [] Name: +++hide-ui+++
        1. [] Description: +++Hide the customers management UI+++

1. [] Your feature flag window should resemble the following:

    !IMAGE[module2-lab4-exercise1-image7.png](module2-lab4-exercise1-image7.png)
    !IMAGE[module2-lab4-exercise1-image8.png](module2-lab4-exercise1-image8.png)

1. [] Click **Save Flag**.

1. [] After saving the feature flag, you will be returned to the feature flag details.

    1. [] Click the slide control to enable targeting
    
    1. [] In the **Target individual users** section, click on **+ Add user targets**, and choose youre mail address you used to log into launchdarkly.com.

    1. [] Click on **Save Changes**

1. [] From the **Launchdarkly** dashboard, go to the account settings.

    !IMAGE[module2-lab4-exercise1-image10.png](module2-lab4-exercise1-image10.png)

1. [] Copy the production SDK key for the **Production** environment. You will need it to integrate the code with the feature flag.

    !IMAGE[module2-lab4-exercise1-image11.png](module2-lab4-exercise1-image11.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 2: Use a Feature Flag in your Application

### Introduction
With a newly created Application Insights resource in Azure, it is time to incorporate the instrumentation key into your application along with the Application Insights SDK.  This is how your application will communicate with Azure and store your application data for review.

### Objectives

After completing this lab, you will be able to:

- Integrate feature flags with your code.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Exercise 1: Create a feature flag](#exercise-1-create-a-feature-flag)

---

[Return to Module 2 Table of Contents](#toc2)  
[Return to Lab Table of Contents](#0) 

### Tasks

1. [] Copy the **ModernUIAppSolution** directory from **C:\\DevOps Fundamentals Lab Material\\Lab 04 - Feature Flags\\Exercise 2 - Use a Feature Flag in your Application\\** to your **c:\\hol** folder

    ```PowerShell-linnenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 04 - Feature Flags\Exercise 2 - Use a Feature Flag in your Application\ModernUIAppSolution' -Destination 'C:\hol' -Force -Recurse
    ```

1. [] Open a PowerShell window and go to the root folder containing both your **ModernApiAppSolution** and your **ModernUIAppSolution** directories.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    ```

1. [] Use the following command to open Visual Studio Code in the **c:\\hol** directory

    ```PowerShell-linenums
    Code .
    ```

1. [] In Visual Studio Code, navigate to the **ModernUIAppSolution** folder and open the **ui.Dockerfile** file.

    !IMAGE[module2-lab4-exercise2-image1.png](module2-lab4-exercise2-image1.png)

    1. [] Add the +++**ENV LaunchDarklyKey**+++ environment variable with the key copied from exercise 1, step 16:
    
        !IMAGE[module2-lab4-exercise2-image2.png](module2-lab4-exercise2-image2.png)

    1. [] In Visual Studio Code, navigate to the **ModernUIApp** folder and open the **CustomersController.cs** file.  Change line 19 and use the email address you used to create your free trial at launchdarkly.com.

        !IMAGE[module2-lab4-exercise2-image3.png](module2-lab4-exercise2-image3.png)

1. [] Run the following commands to stop any running containers and start the application:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUi.ps1
    .\startApiandUI.ps1
    ```

1. [] Once the application is available, navigate to +++http://localhost:9090/Customers+++, you will see the list of customers.

    !IMAGE[module2-lab4-exercise2-image4.png](module2-lab4-exercise2-image4.png)

1. [] Return to launchdarkly.com, sign in, and navigate to the feature flag dashboard, and turn off your feature flag.

    !IMAGE[module2-lab4-exercise2-image5.png](module2-lab4-exercise2-image5.png)

1. [] Refresh the customers page in your application. You should now get the following response.

    !IMAGE[module2-lab4-exercise2-image6.png](module2-lab4-exercise2-image6.png)

    >[!NOTE] You are now able to control the visibility of this feature directly from the launch darkly site by targeting specific users.  If this feature incurs errors, you would collect telemetry data from it, and turn the feature off.  In this way, you have the ability to setup and run experiments, fail-fast on those experiments, and learn from them to introduce greater value.

1. [] Examine the code responsible of enabling the feature flag on and off. It is in the **CustomersController.cs** class in the **ModernUIApp** application.
    
    ```CustomersController.cs-nocopy
        public CustomersController(ICustomerDataService customerDataService, IFeatureFlagService featureFlagService)
        {
            _customerDataService = customerDataService;
            _featureFlagService = featureFlagService;
        }
        public IActionResult Index()
        {
            if (_featureFlagService.ViewFeature(_userName))
            {
                var customers = _customerDataService.GetAll();
                return View(customers);
            }
            else
            {
                return View("~/Views/ComingSoon/Index.cshtml");
            }
        }
    ```

1. [] Stop and remove your Docker containers.

    1. [] Stop all running Docker containers

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUi.ps1
    ```

1. [] From your PowerShell session, stage, commit, and push your changes:

    1. [] Stage your changes in Git using:

        ```PowerShell-linenums
        Set-Location -Path 'c:\hol\ModernUIAppSolution'
        git add *
        ```
    1. [] Commit the changes to the topic branch:

        ```PowerShell-linenums
        git commit -m 'Created Customers Management Feature Flag'
        ```

    1. [] Push the changes to the remote topic branch:

        ```PowerShell-linenums
        git push
        ```

1. [] We have tested our feature flag.  Keeping to our work item workflow, return to Azure DevOps Services and *push* your work item into **In Progress - Done** column.  This signals that you have completed this action and are now waiting for tests, pull requests, or other actions that will move your work item to Done.

    !IMAGE[module2-lab4-exercise2-image7.png](module2-lab4-exercise2-image7.png)

1. [] Create a new pull request for your changes. In Azure DevOps Services, click on **Repos** section then click on Files.  Click on **Create a pull request** button to start the process, then click on the **Create** button in the next page.

    !IMAGE[module2-lab4-exercise2-image8.png](module2-lab4-exercise2-image8.png)

1. [] Complete the pull request by clicking on **Approve**, then **Complete** to merge the changes to the main branch.  By clicking on **Approve** then **Complete** you are acting as a peer reviewer or code reviewer.  This action also moves your work item into the Done column on your board.

1. [] Clean up your local branches after you complete the pull request

    1. [] Switch from your local branch to your main branch.
    
        ```PowerShell-linenums
        git checkout main
        ```

    1. [] At this point all your work has been on the topic branch which has now been merged into the remote main branch.  Your local main branch is now behind the remote main branch.  You must *pull* the changes that have been merged into the remote main to your local main.

        ```PowerShell-linenums
        git pull
        ```
    
    1. [] Delete your local branch

        ```PowerShell-linenums
        git branch -d topics/tb-###
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.
    
    1. [] Delete your remote tracking

        ```PowerShell-linenums
        git branch -dr origin/topics/tb-##
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===

# <span class="module" id="3">Module 3</span>: <span class="title">Release</span>
In this module you learned about Continuous Delivery, Continuous Deployment, and Continuous Integration and how these practices work with your Topic Branch to produce working code in a cycle.  Now, with Software Configuration Management and Infrastructure as Code, we need to create the environment to deploy to and ensure that the environment is trusted and built the same way each time taking advantage of idempotence.

### <span id="toc3">Module 3 Table of Contents</span>
 
##### [Lab 5: Continuous Integration](#lab-5-continuous-integration)

[Exercise 1: Prepare the Infrastructure for Development and Test](#exercise-1-prepare-the-infrastructure-for-development-and-test)  
[Exercise 2: Connect Azure DevOps Services to Azure Container Registry](#exercise-2-connect-azure-devops-services-to-azure-container-registry)  
[Exercise 3: Create a Build Definition for the REST API](#exercise-3-create-a-build-definition-for-the-rest-api)  
[Exercise 4: Create a Build Definition for the UI Application](#exercise-4-create-a-build-pipeline-for-the-ui-application)  

##### [Lab 6: Continuous Delivery](#lab-6-continuous-delivery)

[Exercise 1: Deploy your Applications Manually](#exercise-1-deploy-your-applications-manually)  
[Exercise 2: Manage Infrastructure as Code](#exercise-2-manage-infrastructure-as-code)  
[Exercise 3: Install a Release Smoke Web Test Extension](#exercise-3-install-a-release-smoke-web-test-extension)  
[Exercise 4: Create the Application Release Pipeline](#exercise-4-create-the-application-release-pipeline)  

===
##### <span class="module">Module 3</span>: <span class="title">Release</span>
# Lab 5: Continuous Integration

### Introduction

The build phase of the application lifecycle is about making sure the application is continuously ready to be shipped. It is also about making it ready to be shipped. Therefore, the way you build it will depend on how you want to ship it.

We are going to use the following services to host our application.

- The **ModernApiApp** will be hosted in an **Azure Container Instance**

- The **ModernApi.Database** database will be hosted in a **SQL Azure** database

- The **ModernUIApp** will be hosted in an **Azure Container Instance**

### Objectives

After completing this lab, you will be able to:

- Learn how to setup an automated build definition in Azure DevOps Services

- Understand the value of topic, pull, and main build definitions

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Estimated Time to Complete This Lab

60 minutes

===

# Exercise 1: Prepare the Infrastructure for Development and Test 

### Introduction

In previous labs, our strategy has been to create a topic branch for each story that your team is currently working on, and then to merge those branches back to the main branch as soon as work is done on the topic. However, topic branches should be short lived to minimize integration debt.

Defining what it means to be done with a story, will be up to your team. Whatever definition you come to agreement on, you will want to automate its verification as part of the build process.

### Objectives

After completing this lab, you will be able to:

- Create a topic build definition

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Open a PowerShell window and type the following Azure CLI command.  This will log your PowerShell session in with Azure so you can continue to work in PowerShell and create resources in Azure:
    
    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    az login -u '@lab.CloudPortalCredential(Student1).Username' -p '@lab.CloudPortalCredential(Student1).Password'
    ```

    !IMAGE[module3-lab5-exercise1-image1.png](module3-lab5-exercise1-image1.png)

1. [] We will create a few PowerShell variables that will help us create and prepare the infrastructure in Azure:

    ```PowerShell-linenums
    $suffix = '@lab.LabInstance.Id'
    $resourcegroup = 'holDevTestRGlod@lab.LabInstance.Id'
    $acr = 'acrlod@lab.LabInstance.Id'
    $acrlogin = $acr + '.azurecr.io'
    ```

    !IMAGE[module3-lab5-exercise1-image2.png](module3-lab5-exercise1-image2.png)

1. [] We will create an **Azure Container Registry**. This registry will be used to store all the Docker images you will create during your development and test cycles:
    
    ```PowerShell-linenums
    az acr create -n $acr -g $resourcegroup --sku Basic --admin-enabled true
    ```

1. [] After a few moments, you will return to your PowerShell prompt.  Login to the **Azure Container Registry** you just created.

    ```PowerShell-linenums
    az acr login -n $acr
    ```

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 2: Connect Azure DevOps Services to Azure Container Registry 

### Introduction

With a build pipeline for the API and the UI, it is time to deploy these resources to an Azure Contianer Registry, or ACR.  The ACR will have two repositories that will host the Docker images.  This first step is learning to use Azure DevOps Services Service Connection to extend the capability of Azure DevOps Services into Azure, or any other registry for example GitHub.

### Objectives

After completing this lab, you will be able to:

-  Create a service connection to an Azure hosted Azure Container Registry (ACR)

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Exercise 1: Prepare the infrastructure for Development and Test](#exercise-1-prepare-the-infrastructure-for-dev-and-test)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] From **Azure DevOps Services** go the **Project Settings** hub for the **hol** project and click on **Service Connections**.

    !IMAGE[module3-lab5-exercise2-image1.png](module3-lab5-exercise2-image1.png)

1. [] Click on the **Create service connection** button.

    !IMAGE[module3-lab5-exercise2-image2.png](module3-lab5-exercise2-image2.png)

1. [] Select **Docker Registry** then click Next.

    !IMAGE[module3-lab5-exercise2-image3.png](module3-lab5-exercise2-image3.png)

1. [] Choose **Azure Container Registry** as the registry type.  Your subscription will automatically be selected.

    1. [] Choose your Azure Container Registry from the drop-down selector.

    1. [] Name your service connection +++lodAcr+++ (we will refer to this name later in the lab)

    1. [] Optionally provide a description ++Service connection from Azure DevOps Services to Azure Container Registry for the CRM Program++

    1. [] Verify the checkbox is checked next to **Grant access permission to all pipelines**, then click the **Save** button

    !IMAGE[module3-lab5-exercise2-image4.png](module3-lab5-exercise2-image4.png)

1. [] Once the registration is complete, your service connection will be presented as follows.

    !IMAGE[module3-lab5-exercise2-image5.png](module3-lab5-exercise2-image5.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Create a Build Definition for the REST API

### Introduction
We will use YAML, Yet Another Markup Langauge, to create our build pipeline for the REST API.  With our ACR in Azure, this pipeline will make use of the Service Connection which will deploy the REST API to the modernapi repository in the ACR.

### Objectives

After completing this lab, you will be able to:

- Create build definitions for the REST API using yaml and the starter pipeline.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Exercise 1: Prepare the infrastructure for Development and Test](#exercise-1-prepare-the-infrastructure-for-dev-and-test)
1.  [Exercise 2: Connect Azure DevOps Services to Azure Container Registry](#exercise-2-connect-azure-devops-to-container-registry)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] From **Azure DevOps Services** go the **Azure Pipelines** section and click on **Pipelines**.

    !IMAGE[module3-lab5-exercise3-image1.png](module3-lab5-exercise3-image1.png)

1. [] Click on the **Create pipeline**.

    !IMAGE[module3-lab5-exercise3-image2.png](module3-lab5-exercise3-image2.png)

1. [] Click on **Azure Repos Git** to specify where the code you are building is managed.

    !IMAGE[module3-lab5-exercise3-image3.png](module3-lab5-exercise3-image3.png)

1. [] Select the **ModernApiRepository** then click continue.

    !IMAGE[module3-lab5-exercise3-image4.png](module3-lab5-exercise3-image4.png)

1. [] Select **Starter pipeline**.

    !IMAGE[module3-lab5-exercise3-image5.png](module3-lab5-exercise3-image5.png)

1. [] Replace the default content with the following yaml.

    ```yaml-nolines
    # ModernApiApp:
    # https://aka.ms/yaml

    name: $(Date:yyyyMMdd)$(Rev:.r)

    trigger:
    - main

    pool:
      vmImage: 'windows-2019'

    stages:
    - stage: 'Build'
      displayName: 'Build the API Image'
      jobs:
      - job: Build
        steps:
          - task: Docker@2
            inputs:
              containerRegistry: 'lodAcr'
              repository: 'modernapi'
              command: 'buildAndPush'
              Dockerfile: '$(Build.SourcesDirectory)/apiapp.Dockerfile'
              tags: |
                $(Build.BuildNumber)
                Latest
    ```

    >[!NOTE] The **containerRegistry** variable in the Docker@2 task name refers to the name of the **Service Connection** you created earlier. If you named it differently, you would need to change it in the yaml file.

1. [] Click on the **azure-pipelines.yml** file name to rename the file to +++modernapi.main.cicd.yml+++

    !IMAGE[module3-lab5-exercise3-image6.png](module3-lab5-exercise3-image6.png)

1. [] Enter a message to commit the yaml file in the same repository.

    1. [] Provide a commit message +++Create Build for the REST API+++

    1. [] Optionally provide additional description +++Created the REST API build process using the starter yaml+++

    !IMAGE[module3-lab5-exercise3-image7.png](module3-lab5-exercise3-image7.png)

1. [] Click on **Save and run** located at the bottom right of the page to run your very first build.

1. [] Once the build has started, you can click on the progress icon to see the details.

    !IMAGE[module3-lab5-exercise3-image8.png](module3-lab5-exercise3-image8.png)

    !IMAGE[module3-lab5-exercise3-image9.png](module3-lab5-exercise3-image9.png)

1. [] Once the build has completed, click on Pipelines under the Pipelines section to return to your build pipeline list.  Hover your mouse over the **ModernApiRepository** pipeline, then click on the vertical ellipses on the right to choose **Rename/Move**.  When the dialog box appears, rename the pipeline to +++modernapi.main+++.

    !IMAGE[module3-lab5-exercise3-image10.png](module3-lab5-exercise3-image10.png)
    !IMAGE[module3-lab5-exercise3-image11.png](module3-lab5-exercise3-image11.png)

1. [] Once the build has completed, navigate to Azure Portal and into your resource group to view your Azure Container Registry and its repositories:

    1. [] Navigate to +++https://portal.azure.com+++

    1. [] If you are asked to log in, use:
        1. [] Username: @lab.CloudPortalCredential(Student1).Username
        1. [] Password: @lab.CloudPortalCredential(Student1).Password

    1. [] Click on your resource group
    
        !IMAGE[module3-lab5-exercise3-image12.png](module3-lab5-exercise3-image12.png)

    1. [] Click on your ACR

        !IMAGE[module3-lab5-exercise3-image13.png](module3-lab5-exercise3-image13.png)

    1. [] Click on Repositories found in the left navigation pane while in the ACR

        !IMAGE[module3-lab5-exercise3-image14.png](module3-lab5-exercise3-image14.png)

    1. [] Click on the **modernapi** repository to show its contents.  This was created during the Docker@2 task in the yaml file.

        !IMAGE[module3-lab5-exercise3-image15.png](module3-lab5-exercise3-image15.png)

    1. [] Review your tagged image in the **modernapi** repository in your ACR.  Clicking on Latest or a tagged image here will display the docker pull command and the image manifest.

        !IMAGE[module3-lab5-exercise3-image16.png](module3-lab5-exercise3-image16.png)
    
    1. [] To return to your resource group you can either click on the resource group name in the top-left breadcrumb navigation, or click the X to close the fly-out detail panes.  

        !IMAGE[module3-lab5-exercise3-image17.png](module3-lab5-exercise3-image17.png)

1. [] Return to **Azure DevOps Services** and navigate to the pipelines screen.  Click on **modernapi.main**, then click the **edit** the **ModernApiRepository** pipeline.

    !IMAGE[module3-lab5-exercise3-image18.png](module3-lab5-exercise3-image18.png)

1. [] Replace the content of yaml file with the following content.

    ```yaml-nolines
    # ModernApiApp:
    # https://aka.ms/yaml

    name: $(Date:yyyyMMdd)$(Rev:.r)

    trigger:
    - main

    pool:
      vmImage: 'windows-2019'

    stages:
    - stage: 'Build'
      displayName: 'Build the API Image'
      jobs:
      - job: Build
        steps:
          - task: Docker@2
            inputs:
              containerRegistry: 'lodAcr'
              repository: 'modernapi'
              command: 'buildAndPush'
              Dockerfile: '$(Build.SourcesDirectory)/apiapp.Dockerfile'
              tags: |
                $(Build.BuildNumber)
                Latest
          - task: CopyFiles@2
            displayName: Copy the TSQL Scripts
            inputs:
              SourceFolder: 'ModernApiApp.Database/deploy'
              Contents: '*.sql'
              TargetFolder: '$(build.artifactstagingdirectory)'
              flattenFolders: true
          - task: PublishBuildArtifacts@1
            displayName: Publish the TSQL Scripts to the Artifacts Drop Folder
            inputs:
              PathtoPublish: '$(Build.ArtifactStagingDirectory)'
              ArtifactName: 'drop'
              publishLocation: Container
    ``` 

1. [] Save the change to the pipeline yaml file.  This will trigger a build because the trigger node in the yaml file is set to main.  Any changes to main will result in this build executing.

    1. [] Provide a commit message +++Updated modernapi.main.cicd.yml for TSQL Resources+++ and click the **Save** button to save and run this build

1. [] Return to your existing PowerShell session or open a new PowerShell session and change to the **c:\\hol\ModernApiAppSolution** directory and pull your changes to sync your local repository with the shared repository

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernApiAppSolution'
    git pull
    ```

    !IMAGE[module3-lab5-exercise3-image20a.png](module3-lab5-exercise3-image20a.png)

    >[!NOTE] Remember, when we created a new build pipeline a new file named azure-pipelines.yml was added to the ModernApiAppRepository repository.  We then renamed the file to modernapi.main.cicd.yml.  To keep our local repository in sync with our remote we must pull that change and merge it into our local repository.

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Create a Build Pipeline for the UI Application

### Introduction

Having used YAML to create the REST API build pipeline, we are going to examine creating a build pipeline for the UI with an existing YAML file.

### Objectives

After completing this lab, you will be able to:

- Use an existing YAML build file in a Git repository to create a build definition

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Exercise 1: Prepare the infrastructure for Development and Test](#exercise-1-prepare-the-infrastructure-for-dev-and-test)
1.  [Exercise 2: Connect Azure DevOps Services to Azure Container Registry](#exercise-2-connect-azure-devops-to-container-registry)
1.  [Exercise 3: Create a Build Definition for the REST API](#exercise-3-create-a-build-definition-for-the-rest-api)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] In your PowerShell session, change to the **c:\\hol\\ModernUIAppSolution** folder and copy the **modernui-ci.yml** file from **C:\\DevOps Fundamentals Lab Material\\Lab 05 - Continuous Integration\\Exercise 4 - Create a Build Pipeline for the UI Application\\** directory to your **c:\\hol\\ModernUIAppSolution** project folder

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 05 - Continuous Integration\Exercise 4 - Create a Build Pipeline for the UI Application\modernui-ci.yml' -Destination 'c:\hol\ModernUIAppSolution\' -Force
    ```

1. [] With this new file added to our **ModernUIAppSolution** folder, we need to add it to Git, commit the change, then push this change to our remote repository.  This will upload the file to the remote repository so we can use it to create a new build pipeline for the ModernUIApp

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    git add *
    git commit -m 'Created the modernui-ci.yml file for ModernUIApp Build Pipeline'
    git push
    ```

    !IMAGE[module3-lab5-exercise4-image1a.png](module3-lab5-exercise4-image1a.png)

1. [] Navigate to Azure DevOps Services, then click on Pipelines under the Pipelines section, and click on the **New Pipeline** button.

    !IMAGE[module3-lab5-exercise4-image2.png](module3-lab5-exercise4-image2.png)

1. [] Select **Azure Repos Git**.

    !IMAGE[module3-lab5-exercise4-image3.png](module3-lab5-exercise4-image3.png)

1. [] Select the **ModernUIAppRepository**.

    !IMAGE[module3-lab5-exercise4-image4.png](module3-lab5-exercise4-image4.png)

1. [] Select **Existing Azure Pipelines YAML file**.

    !IMAGE[module3-lab5-exercise4-image5.png](module3-lab5-exercise4-image5.png)

1. [] Select the **modernui-ci.yml** file, then click **Continue**.

    !IMAGE[module3-lab5-exercise4-image6.png](module3-lab5-exercise4-image6.png)

1. [] Click on **modernui.ci.yml** and rename to +++modernui.main.cicd.yml+++

    !IMAGE[module3-lab5-exercise4-image7.png](module3-lab5-exercise4-image7.png)

1. [] Click the **Save and Run** button to save the build and provide comments.

    1. [] Update the commit message +++Create Build for the UI Application+++

    1. [] Optionally provide a description +++Created the UI build process using an existing yaml file+++

    1. [] Click on the **Save and Run** button to execute the build process

    !IMAGE[module3-lab5-exercise4-image8.png](module3-lab5-exercise4-image8.png)

    > [!NOTE] You will be returned to the summary screen of the pipeline and your build will be in queue.  Click on **pipelines** on the left under the Pipelines section to return to your pipeline list.  It is safe to proceed while your new pipeline is building

1. [] You should now have two pipelines.  The **modernapi.main** and the **ModernUIAppRepository**.  Hover your mouse over the **ModernUIAppRepository** and click on the vertical ellipses that appears on the far right and finally click on **Rename/move**.

    !IMAGE[module3-lab5-exercise4-image9.png](module3-lab5-exercise4-image9.png)

    1. [] Rename **ModernUIAppRepository** to +++modernui.main+++ and click on the **Save** button

    !IMAGE[module3-lab5-exercise4-image10.png](module3-lab5-exercise4-image10.png)

1. [] Once the **modernui.main** build pipeline completes, your Azure Container Registry should now contain all your application components.

    !IMAGE[module3-lab5-exercise4-image11.png](module3-lab5-exercise4-image11.png)

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===

##### <span class="module">Module 3</span>: <span class="title">Release</span>
# Lab 6: Continuous Delivery

### Introduction

Continuous delivery (CD) is the process to build, test, configure and deploy from a build to production environment. In this lab, we'll be deploying our application manually, then we will automate the manual process. By automation, CD reduces the total time to deploy, time to mitigate (TTM), and time to remediate (TTR). This optimizes process time and eliminates idle time.

### Objectives

After completing this lab, you will be able to:

- Setup an automated release pipeline

- Create various environments for your pipeline

- Set up a resource group on Azure

- Deploy your application to a web service and view it in a web browser

- Use feature switches to toggle between showing and hiding features

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)  
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)  
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)  
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)  

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Estimated Time to Complete This Lab

60 minutes

===

# Exercise 1: Deploy your Applications Manually 

### Introduction
With an ACR hosting both the REST API and the UI it is time to create the infrastructure and deploy our application.  Frist we will examine the process manually.  This helps us understand the steps to successfully deploy the application and learn how to automate these steps.

### Objectives

After completing this lab, you will be able to:

- Understand the infrastructure required for deploying your applications, and

- the level of automation required in deploying your applications.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)  
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)  
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)  
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)  

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Open a PowerShell session and set the following variables.  We will use these variables through the remaining steps of this lab to assist with the execution of our AZ CLI commands:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    $resourcegroup = 'holDevTestRGlod@lab.LabInstance.Id'
    $acr = 'acrlod@lab.LabInstance.Id'
    $acrlogin = $acr + '.azurecr.io'
    $apiname = 'modernapiapp-@lab.LabInstance.Id'
    $apidns = 'modernapiapp-@lab.LabInstance.Id'
    $uiname  = 'modernuiapp-@lab.LabInstance.Id'
    $uidns = 'modernuiapp-@lab.LabInstance.Id'
    $sqlserver = 'modernsqlserver-@lab.LabInstance.Id'
    $db = 'modernsqlserverdb-@lab.LabInstance.Id'
    $sqluser = 'devopsadmin'
    $sqlpass = 'Microsoft2018!1'
    $location = 'eastus'
    ```

1. [] Execute the following command to login to your Azure subscription:

    ```PowerShell-linenums
    az login -u '@lab.CloudPortalCredential(Student1).Username' -p '@lab.CloudPortalCredential(Student1).Password'
    ```
    >[!NOTE]This command will return information about your azure subscription.

    !IMAGE[module3-lab6-exercise1-image1.png](module3-lab6-exercise1-image1.png)

1. [] Next we will create a Azure hosted SQL Server to host your database for the REST API.  Execute the following **AZ SQL SERVER CREATE** statement:

    ```PowerShell-linenums
    az sql server create --name $sqlserver --resource-group $resourcegroup --location $location --admin-user $sqluser --admin-password $sqlpass
    ```

1. [] To access the SQL Server, we need to create a firewall rule to allow connecting to the database. Execute the following **AZ SQL SERVER FIREWALL-RULE CREATE** statement:

    ```PowerShell-linenums
    az sql server firewall-rule create --resource-group $resourcegroup --server $sqlserver -n AllowLODSystem --start-ip-address '0.0.0.0' --end-ip-address '255.255.255.255'
    ```

1. [] Create a database on the hosted SQL Server for the REST API.  Execute the **AZ SQL DB CREATE** statement:

    ```PowerShell-linenums
    az sql db create --resource-group $resourcegroup --server $sqlserver --name $db --service-objective S0 
    ```

1. [] Use the following command to get the connection string for your database.  We will use this for the REST API and set it as an environment variable for the REST API.  Execute the **AZ SQL DB SHOW-CONNECTION-STRING** statement:

    ```PowerShell-linenums
    $cxn = az sql db show-connection-string --server $sqlserver --name $db --client ado.net 
    ```

1. [] The username and password currently in the connection string are the string literal "username" and "password".  Replace "username" and "password" in the connection string:

    ```PowerShell-linenums
    $cxn = $cxn.Replace('<username>',$sqluser)
    $cxn = $cxn.Replace('<password>',$sqlpass)
    ```

1. [] Navigate to your resource group in Azure Portal.  You will see your ACR, SQL Server, and SQL Database:

    !IMAGE[module3-lab6-exercise1-image2.png](module3-lab6-exercise1-image2.png)

1. [] Click on **modernsqlserverdb-@lab.LabInstance.Id (modernsqlserver-@lab.LabInstance.Id/modernsqlserverdb-@lab.LabInstance.Id** in your list, then click on **Query editor (preview)** in the left navigate pane:

    !IMAGE[module3-lab6-exercise1-image3.png](module3-lab6-exercise1-image3.png)

1. [] Provide the SQL Authentication credentials to log into your database:

    1. [] Username: +++devopsadmin+++   
    
    1. [] Password: +++Microsoft2018!1+++

    !IMAGE[module3-lab6-exercise1-image4.png](module3-lab6-exercise1-image4.png)

1. [] You will be presented with a new query window.  In this window we will create a new table and populate that table with data for the REST API.

    ```TSQL-linenums
    CREATE TABLE [dbo].[Customers] (
        [Id] int identity not null primary key,
        [Address] nvarchar(128) not null,
        [CompanyName] nvarchar(128) not null,
        [Name] nvarchar(128) not null
    );
    GO

    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'100 Main Street', N'Microsoft', N'Scott X. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'200 Contoso Way', N'Microsoft', N'Kathleen Y. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'300 Fabrikam Ct.', N'Microsoft', N'Judson Z. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'400 Northwind Trader Circle', N'Microsoft', N'Amy W. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'500 World Wide Street', N'Microsoft', N'Jean-Phillip V. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'600 Main Street', N'Microsoft', N'Bill X. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'700 Contoso Way', N'Microsoft', N'Satya Y. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'800 Fabrikam Ct.', N'Microsoft', N'Brad Z. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'900 Northwind Trader Circle', N'Microsoft', N'Chris W. Doe')
    INSERT INTO [dbo].[Customers] ([Address], [CompanyName], [Name]) VALUES (N'1000 World Wide Street', N'Microsoft', N'Kurt V. Doe')
    GO
    ```

    !IMAGE[module3-lab6-exercise1-image5.png](module3-lab6-exercise1-image5.png)

1. [] Close the Query editor by clicking on the **X** in the top right, then click on ok in the dialog box about saving changes.  You don't need to save these changes.

    !IMAGE[module3-lab6-exercise1-image6.png](module3-lab6-exercise1-image6.png)

1. [] Return to your PowerShell session and retrieve the Azure Container Registry username. Execute the **AZ ACR CREDENTIAL SHOW** command:

    ```PowerShell-linenums
    $acruser = az acr credential show -n $acr --query username 
    ```
    >[!TIP] This value is: acrlod@lab.LabInstance.Id

1. [] Retrieve the Azure Container Registry password.  Execute the **AZ ACR CREDENTIAL SHOW** command:

    ```PowerShell-linenums
    $acrpass = az acr credential show -n $acr --query passwords[0].value
    ```
    >[!TIP] This value will be dynamic and a long complicated string

1. [] Retrieve the container registry login server url. Execute the **AZ ACR SHOW** command:

    ```PowerShell-linenums
    $acrlogin = az acr show --name $acr --query loginServer
    ```
    >[!TIP] This value is: acrlod@lab.LabInstance.Id.azurecr.io and the text loginServer is case sensitive.  Server must have an uppercase S and the rest lowercase.

1. [] We are ready to create our serverless container by pulling an image from your ACR.  Create an Azure Container Instance that will host your modernapiapp.  Execute the **AZ CONTAINER CREATE** command:

    ```PowerShell-linenums
az container create --resource-group $resourcegroup --name $apiname --image $acrlogin/modernapi:Latest --os-type Windows --cpu 2 --memory 3.5 --registry-login-server $acrlogin --registry-username $acruser --registry-password $acrpass --dns-name-label $apidns --ports 80 --environment-variables "ModernApiDBConnectionString=$cxn"
    ```

    >[!NOTE] "ModernApiDBConnectionString" must be in double-quotes and not single quotes.  This allows for variable expansion within PowerShell.  All single quoted strings in PowerShell are literal; however, with double-quoted strings PowerShell will expand the variable with its assigned value.

1. [] Retrieve the API URL and set it to a PowerShell variable.  We will use this for the UI as an environment variable.
    
    ```PowerShell-linenums
    $apiurl = "http://$apiname.$location.azurecontainer.io/api/customers"
    ```

1. [] Create an Azure Container Instance application that will host your modernuiapp.  We will pull from the modernui repository in your ACR to deploy this container.  Execute the **AZ CONTAINER CREATE** command:

    ```PowerShell-linenums
    az container create --resource-group $resourcegroup --name $uiname --image $acrlogin/modernui:Latest --os-type Windows --cpu 2 --memory 3.5 --registry-login-server $acrlogin --registry-username $acruser --registry-password $acrpass --dns-name-label $uidns --ports 80 --environment-variables "ApiURL=$apiurl"
    ```

1. [] Test your API and UI container deployments:

    1. [] Verify the REST API container is responsive by requesting the **/weatherforecast** route.  This is part of the dotnet new webapi project creation command and will serve as a good testing point.

    ```Browser-linenums
    http://modernapiapp-@lab.LabInstance.Id.eastus.azurecontainer.io/weatherforecast
    ```
    !IMAGE[module3-lab6-exercise1-image7.png](module3-lab6-exercise1-image7.png)

    1. [] Verify the REST API container is returning data by requesting the **/api/customers** route.  This will also test the connection from the REST API to the SQL Server and the SQL Server access and data.

    ```Browser-linenums
    http://modernapiapp-@lab.LabInstance.Id.eastus.azurecontainer.io/api/customers
    ```
    !IMAGE[module3-lab6-exercise1-image8.png](module3-lab6-exercise1-image8.png)

    1. [] Verify the UI is up by requesting the **default page**.  This will test that the UI web server, called Kestrel, is up and awaiting web requests.

    ```Browser-linenums
    http://modernuiapp-@lab.LabInstance.Id.eastus.azurecontainer.io
    ```
    !IMAGE[module3-lab6-exercise1-image9.png](module3-lab6-exercise1-image9.png)

    >[!NOTE] Learn more about Kestrel by navigating to [https://docs.microsoft.com/en-us/aspnet/core/fundamentals/servers/kestrel?view=aspnetcore-3.1](https://docs.microsoft.com/en-us/aspnet/core/fundamentals/servers/kestrel?view=aspnetcore-3.1)

    1. [] Verify the application is fully responsive by requesting the **/Customers** page from the UI, in turn then calls the REST API URL which will query SQL Sever and return the data as JSON to the UI.

    ```Browser
    http://modernuiapp-@lab.LabInstance.Id.eastus.azurecontainer.io/Customers
    ```
    !IMAGE[module3-lab6-exercise1-image10.png](module3-lab6-exercise1-image10.png)

===

# Exercise 2: Manage Infrastructure as Code

### Introduction
Now that we have deployed the application manually, we can take the next step and automate the process.  We do this to ensure a consistent environment each time we create a build.  Additionally, with Infrastructure as Code (IaC) we gain visibility, traceability, and agility with source control on changes to the environment.  For example, to change our database plan we create a work item, go through our process and change the argument from S0 to S1 and deploy our infrastructure.

### Objectives

After completing this lab, you will be able to:

- Manage your application infrastructure as code, and 

- store your application infrastructure code in a git repository.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)  
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)  
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)  
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)  
1.  [Exercise 1: Deploy your Applications Manually](#exercise-1-deploy-your-applications-manually)  

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Return to Azure DevOps Services and click on **Project Settings** in the bottom left.  In the **Repos** section click on **Repositories**.  We are going to create a new Git repository that will store our PowerShell scripts which will create our infrastructure.  These scripts will be used in a pipeline to create the same infrastructure every time it runs.

    1. [] Click on **Create** and create a new repository name +++Infrastructure+++.  Uncheck the box next to **Add a README**, and click on the **Create** button
    
    !IMAGE[module3-lab6-exercise2-image1.png](module3-lab6-exercise2-image1.png)

1. [] Click on Repos in the left navigation of Azure DevOps Services.  Using the selector at the top of the page, change to the newly created Infrastructure Repo

    !IMAGE[module3-lab6-exercise2-image2.png](module3-lab6-exercise2-image2.png)

1. [] We will clone this new repository to your local computer.  The clone process will automaticaly setup the connection from your local computer to this remote repository.  This is called a remote in Git.

    1. [] Return to your PowerShell session, or start a new one, and change into the **c:\\hol** directory

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    ```

    1. [] Copy the clone URL for the Infrastructure repository and issue the git clone command:

    ```Powershell-linenums
    git clone https://Student1-@lab.LabInstance.Id@dev.azure.com/Student1-@lab.LabInstance.Id/hol/_git/Infrastructure
    ```
    !IMAGE[module3-lab6-exercise2-image3.png](module3-lab6-exercise2-image3.png)

1. [] The Infrastructure repository is now cloned and created in the **c:\\hol** directory

    !IMAGE[module3-lab6-exercise2-image4.png](module3-lab6-exercise2-image4.png)

1. [] Copy all the files contained in the **C:\\DevOps Fundamentals Lab Material\\Lab 06 - Continuous Delivery\\Exercise 2 - Manage Infrastructure as Code\\** directory to your **c:\\hol\Infrastructure** directory.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 06 - Continuous Delivery\Exercise 2 - Manage Infrastructure as Code\*' -Destination 'C:\hol\Infrastructure\' -Force -Recurse
    ```

1. [] Open Visual Studio Code in the **c:\\hol** directory

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Code .
    ```

1. [] Modify the **modernapp-cd.yml** file in the **Infrastructure** repository and update the **mySuffix** and **azurePassword** variables in the yml file

    If you have used the same naming patterns as indicated in the previous labs, you should only have to modify two variables in the whole file. These variables are. 
    
    1. [] **mySuffix**: +++@lab.LabInstance.Id+++
    1. [] **azurePassword**: +++@lab.CloudPortalCredential(Student1).Password+++

    !IMAGE[module3-lab6-exercise2-image5.png](module3-lab6-exercise2-image5.png)

1. [] **Save the changes** to the **modernapp-cd.yml** file, then close Visual Studio Code and return to your PowerShell session.

1. [] Change to the Infrastructure repository, then stage, commit, and push your changes to Azure DevOps Services

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\Infrastructure'
    git add *
    git commit -m "Created Infrastructure Repository and Updated modernapp-cd.yml file"
    git push
    ```

    !IMAGE[module3-lab6-exercise2-image6.png](module3-lab6-exercise2-image6.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Install a Release Smoke Web Test Extension

### Introduction
Now that we have Infrastructure as Code working for us, we want to continue to test our application higher up on the V-Model in an automated fashion.  In Module 2 you created unit tests which test code fabrication.  Here we will install a free Azure DevOps Services Extension that will allow us to test that the REST API is returning data during the pipeline.

### Objectives

After completing this lab you will learn to explore the Azure DevOps Marketplace and install a Release Web Smoke Test extension for use in the continuous delivery pipeline.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)  
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)  
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)  
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)  
1.  [Exercise 1: Deploy your Applications Manually](#exercise-1-deploy-your-applications-manually)  
1.  [Exercise 2: Manage Infrastructure as Code (IaC)](#exercise-2-manage-infrastructure-as-code)  

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Access the Azure DevOps Marketplace by clicking on the shopping bag icon located at the top right of the page, then click on Browse marketplace

    !IMAGE[module3-lab6-exercise3-image1.png](module3-lab6-exercise3-image1.png)

1. [] From the Azure DevOps marketplace, type +++Release Web Smoke Test+++ and install the Free extension

    !IMAGE[module3-lab6-exercise3-image2.png](module3-lab6-exercise3-image2.png)

1. [] Select the **Release Web Smoke Test** extension, then click the **Get it free** to install this into your organization.  Click on **Proceed to Organizatin**, then click on **hol** to return to your project.

    !IMAGE[module3-lab6-exercise3-image3.png](module3-lab6-exercise3-image3.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Create the Application Release Pipeline

### Introduction
Here we will create the Release pipeline using YAML.  YAML allows for source control integration and resembles the classic release pipeline with jobs and tasks.  This pipeline will creat the CD methodology: Ring Deployment and setup Ring 0 and Ring 1 for your application.  Each step of the way, unit tests are being executing and Web Tests are being executed.

### Objectives

After completing this lab you will be able to

- create a new release pipeline using an existing yml file,

- review the ring deployment methodology in practice, and

- verify your application is operational by conducting a test during the pipeline execution.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)  
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)  
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)  
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)  
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)  
1.  [Exercise 1: Deploy your Applications Manually](#exercise-1-deploy-your-applications-manually)  
1.  [Exercise 2: Manage Infrastructure as Code (IaC)](#exercise-2-manage-infrastructure-as-code)  
1.  [Exercise 3: Install a Release Smoke Web Test Extension](#exercise-3-install-a-release-smoke-web-test-extension)

---

[Return to Module 3 Table of Contents](#toc3)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Return to **Azure DevOps Services** and click on **Pipelines** under the **Pipelines** section

    !IMAGE[module3-lab6-exercise4-image1.png](module3-lab6-exercise4-image1.png)

1. [] Click on **New pipeline**.

    !IMAGE[module3-lab6-exercise4-image2.png](module3-lab6-exercise4-image2.png)

1. [] Select **Azure Repos Git**.

    !IMAGE[module3-lab6-exercise4-image3.png](module3-lab6-exercise4-image3.png)

1. [] Select the **Infrastructure** repository.

    !IMAGE[module3-lab6-exercise4-image4.png](module3-lab6-exercise4-image4.png)

1. [] Select **Existing Azure Pipelines YAML file** from the **Configure your pipeline** screen.

    !IMAGE[module3-lab6-exercise4-image5.png](module3-lab6-exercise4-image5.png)

1. [] Then select the **modernapp-cd.yml** file from the **Infrastrucure** repository and click **Continue**.

    !IMAGE[module3-lab6-exercise4-image6.png](module3-lab6-exercise4-image6.png)

1. [] Since you have already modified all the necessary values, you are ready to run the pipeline. Click on **Run** to deploy the api, ui and database. 

    >[!note]The pipeline will deploy the application into an initial environment referred to as **Ring0** (a preview environment) , run validation on it, then promote it to another environment **Ring1** (a global availability environment)
    >
    !IMAGE[module3-lab6-exercise4-image7.png](module3-lab6-exercise4-image7.png)

    >[!NOTE] Once the pipeline execution is completed, you should see the following updates.
    >
    !IMAGE[module3-lab6-exercise4-image8.png](module3-lab6-exercise4-image8.png)

1. [] Navigate to Ring 0 of your deployment +++http://modernui-ring0-@lab.LabInstance.Id.eastus.azurecontainer.io/customers+++

1. [] You will receive the following response:

    !IMAGE[module3-lab6-exercise4-image9.png](module3-lab6-exercise4-image9.png)

1. [] Visit the resource group you created earlier using the Azure portal. You should see now the following applications and databases that were automatically created using **modernapp.cd** release pipeline.

    !IMAGE[module3-lab6-exercise4-image10.png](module3-lab6-exercise4-image10.png)

### Congratulations!

You have successfully completed this Lab. Click **Next** to advance to the next Lab.

===

# <span class="module" id="4">Module 4</span>: <span class="title">Learn</span>

In this module you learned about the importance of monitoring your application.  Being data informed helps you make better decisions about your application and prioritize value in your backlog.  Additionally, have a monitoring solution for your application will help you with a lower MTTD (Mean Time to Detect), and MTTR (Mean Time to Remediate)

### <span id="toc4">Module 4 Table of Contents</span>
 
##### [Lab 7: Application Monitoring](#lab-7-application-monitoring)

[Exercise 1: Setup the Telemetry Infrastructure](#exercise-1-setup-the-telemetry-infrastructure)  
[Exercise 2: Add Basic Telemetry to your Application](#exercise-2-add-basic-telemetry-to-your-application)  
[Exercise 3: Assess Telemetry Information](#exercise-3-assess-basic-telemetry-information)  
[Exercise 4: Report Issues](#exercise-4-report-issues)  

===
##### <span class="module" id="4">Module 4</span>: <span class="title">Learn</span>
# Lab 7: Application Monitoring

### Introduction

Application monitoring is a crucial step in DevOps. Once an application has been deployed to the customer, the state of the application needs to be constantly monitored to allow for continuous feedback and improvement. The health of the application is vital for a team to prevent downtime and remain proactive in fixing issues detected. Tools such as Application Insights help organizations monitor the health and performance of their applications.

### Objectives

After completing this lab, you will be able to:

- Track the health of your application with telemetry,

- learn how to draw insights from Application Insights,

- utilize load tests to monitor application performance, and 

- report issues about downtimes and errors detected.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)
1.  [Lab 6: Continous Delivery](#lab-6-continuous-delivery)

---

[Return to Module 4 Table of Contents](#toc4)  
[Return to Lab Table of Contents](#0)

### Estimated Time to Complete This Lab

60 minutes

### For More Information

===

# Exercise 1: Setup the Telemetry Infrastructure

### Introduction

In this exercise, you will add the necessary resources that will be used to collect telemetry for your application.

### Objectives

After completing this lab, you will be able to:

- Setup telemetry on Azure

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)
1.  [Lab 6: Continous Delivery](#lab-6-continuous-delivery)

---

[Return to Module 4 Table of Contents](#toc4)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Navigate to +++https://portal.azure.com+++ and log in if necessary.  Then, navigate to your resource group with your deployed containers.

    !IMAGE[module4-lab7-exercise1-image1.png](module4-lab7-exercise1-image1.png)

1. [] Click on your resource group, then click **Add** to add a new resource to your resource group.

    !IMAGE[module4-lab7-exercise1-image2.png](module4-lab7-exercise1-image2.png)

1. [] In the 'Search' box, type +++Log Analytics Workspace+++ and choose Log Analytics Workspace in the drop-down list

    !IMAGE[module4-lab7-exercise1-image3.png](module4-lab7-exercise1-image3.png)

1. [] Click the **Create** button in the Log Analytics Workspace creating screen

    !IMAGE[module4-lab7-exercise1-image4.png](module4-lab7-exercise1-image4.png)

1. [] Configure your Log Analytics Workspace with the following:

    1. [] Name: +++modernapp-workspace-@lab.LabInstance.Id+++

    !IMAGE[module4-lab7-exercise1-image5.png](module4-lab7-exercise1-image5.png)

    1. [] Click on the **Review + Create** button, then click the **Create** to create the Log Analytics Workspace in your resource group

1. [] Navigate back to your resource group, and click **Add** to add another resource.  This time we will be adding **Application Insights** which will use your **Log Analytics Workspace**

1. [] In the 'Search' box, type +++Application Insights+++ and choose Application Insights in the drop-down list

    !IMAGE[module4-lab7-exercise1-image6.png](module4-lab7-exercise1-image6.png)

1. [] Click the **Create** button to create a new Application Insights resource

    !IMAGE[module4-lab7-exercise1-image7.png](module4-lab7-exercise1-image7.png)

1. [] Enter the following information in the **Project Details** of your Application Insights, then click the **Review + Create** button, and finally the **Create** button.

    1. [] Name: +++modernapp-monitoring+++

    1. [] Region: **(US) East US**

    1. [] Resource Mode: **Workspace-Based**

    1. [] Log Analytics Workspace: +++modernapp-workspace-@lab.LabInstance.Id+++ (**NOTE**: This will be the name of the workspace you created in step 5)

    !IMAGE[module4-lab7-exercise1-image8.png](module4-lab7-exercise1-image8.png)

1. [] Once the **Application Insights** resource is created go back to the **Resource Group**.  You will see you two new resources.

    !IMAGE[module4-lab7-exercise1-image9.png](module4-lab7-exercise1-image9.png)

1. [] Click on **modernapp-monitoring** to navigate to your Application Insights resource.

1. [] You will notice that your **modernapp-monitoring** is not collecting telemetry data. To collect telemetry data we need to connect our application to this resource using the Instrumentation Key.

1. [] Copy the **Instrumentation Key**. We will use it to wire the application to the **Application Insights** resource.

    !IMAGE[module4-lab7-exercise1-image10.png](module4-lab7-exercise1-image10.png)

    > [!KNOWLEDGE] In real scenarios, you would create different **Application Insights** resources for your application. Dev/Test and Production.

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 2: Add Basic Telemetry to your Application

### Introduction

In this exercise, you will add basic telemetry to your application and you will start monitoring application health KPIs.

### Objectives

After completing this lab, you will be able to:

- Learn the basic telemetry concepts.

- Become familiar with how you add telemetry to applications

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)
1.  [Lab 6: Continous Delivery](#lab-6-continuous-delivery)  
1.  [Exercise 1: Setup the Telemetry Infrastructure](#exercise-1-setup-the-telemetry-infrastructure)

---

[Return to Module 4 Table of Contents](#toc4)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Return to the Web CRM Team board

    !IMAGE[module4-lab7-exercise2-image1.png](module4-lab7-exercise2-image1.png)

1. [] In the Backlog column, click on **+ New Item**, and create a work item titled +++Add Telemetry to the Modern UI+++

1. [] Move the **Add Telemetry to the Modern UI** work item to the Planned column.  It will be assigned to you and be set in the current sprint.

1. [] Move the **Add Telemetry to the Modern UI** work item to In Progress - Doing column.  This action communicates what work you are currently implementing.

    > [!KNOWLEDGE] We will *pull* work into *doing* and *push* completed work into *done*.  This allows for visual communication about what a team member has completed, but is waiting on a pull request to complete or a test to complete for the work item to finally be automatically moved into the Done column.

    !IMAGE[module4-lab7-exercise2-image2.png](module4-lab7-exercise2-image2.png)

1. [] Click on the **Add Telemetry to the Modern UI** work item

1. [] Under the Development section located on the right-side of the work item, click on **create a branch** to create a topic branch.  Be sure to choose **ModernUIAppRepository** as the repositry.

    > [!ALERT] Take note of your work item ID.  This is found in the top-left corner of the work item.  When we create a topic branch, we use the naming convention of 'topics/tb-###' where ### is the ID of the work item.

1. [] In your PowerShell session, fetch the new branch.

    1. [] Fetch, or ask, your remote (Azure DevOps Services) of there are any new branches.  Make sure you are in the **c:\hol\ModernUIAppSolution** folder.
    
    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution'
    git fetch
    ```

1. [] Checkout the remote topic branch.  This will create a local branch on your computer with the same name

    1. [] Checkout remote topic branch
    
    ```PowerShell-linenums
    git checkout topics/tb-###
    ```
    > [!ALERT] Remember to use your topic branch name from step 6

1. [] From your PowerShell window, change to the **ModernUIApp** project and add the Application Insights instrumentation packages to the UI application:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUIAppSolution\ModernUIApp'
    dotnet add package Microsoft.ApplicationInsights.AspNetCore
    dotnet add package Microsoft.ApplicationInsights.PerfCounterCollector
    ```
    > [!KNOWLEDGE] **Application Insights for ASP.NET Core** web applications. See [https://azure.microsoft.com/en-us/documentation/articles/app-insights-asp-net-five/](https://azure.microsoft.com/en-us/documentation/articles/app-insights-asp-net-five/) for more information.
    >
    > **Application Insights Performance Counters Collector** allows you to send data collected by Performance Counters to Application Insights.

1. []  Now, change to the **ModernApiAppSolution** then to the **ModernApiApp** directory and add the telemetry packages to the REST API.  We will also gather telemetry data from our REST API to develop a fuller picture of our application.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernApiAppSolution\ModernApiApp'
    dotnet add package Microsoft.ApplicationInsights.AspNetCore
    dotnet add package Microsoft.ApplicationInsights.PerfCounterCollector
    ```
1. [] Open Visual Studio Code in the **c:\hol** directory

1. [] Open the **Startup.cs** file in the **ModernApiApp** directory

    !IMAGE[module4-lab7-exercise2-image13.png](module4-lab7-exercise2-image13.png)

1. [] Add the following line, using your Instrumentation Key from **exercise 1, step 13**, after line 32 in the **Startup.cs** file:

    ```C#-linenums
    services.AddApplicationInsightsTelemetry("c6ea8218-abee-4ca2-b256-ed7f581fd59e");
    ```

    !IMAGE[module4-lab7-exercise2-image14.png](module4-lab7-exercise2-image14.png)

1. [] Navigate to the **ModernUIAppSolution** directory in Visual Studio Code and open the **ui.dockerfile** file.

    !IMAGE[module4-lab7-exercise2-image4.png](module4-lab7-exercise2-image4.png)

1. [] Add the **Application Insights** Instrumentation key as an environment variable, replace the value with the one you copied from your Azure Application Insights in **exercise 1, step 13**.

    ```Docker-linenums
    ENV APPINSIGHTS_INSTRUMENTATIONKEY *****-****-***-99af-b623e761c82e
    ```

    !IMAGE[module4-lab7-exercise2-image5.png](module4-lab7-exercise2-image5.png)

    > [!NOTE] You must your your instrumentation key.  Please refer to exercise 1, step 13 for your instrumentation key.

1. [] Open the **Startup.cs** file in the **ModernUIApp** directory.

    !IMAGE[module4-lab7-exercise2-image6.png](module4-lab7-exercise2-image6.png)

1. [] Add the code after line 29 (*go to the end of line 29 and press enter*) below to the ConfigureServices() method in your Startup and save your changes.

    ```C#-linenums
    Microsoft.ApplicationInsights.AspNetCore.Extensions.ApplicationInsightsServiceOptions aiOptions = new Microsoft.ApplicationInsights.AspNetCore.Extensions.ApplicationInsightsServiceOptions();

    aiOptions.EnableAdaptiveSampling = true;
    aiOptions.EnableDebugLogger = true;
    aiOptions.EnableHeartbeat = true;
    aiOptions.EnablePerformanceCounterCollectionModule = true;
    aiOptions.EnableRequestTrackingTelemetryModule = true;
    aiOptions.EnableQuickPulseMetricStream = true;

    services.AddApplicationInsightsTelemetry(aiOptions);
    ```

    !IMAGE[module4-lab7-exercise2-image7.png](module4-lab7-exercise2-image7.png)

1. [] In the **ModernUIApp** directory open the **\_ViewImports.cshtml** file found in the **Views** directory

    !IMAGE[module4-lab7-exercise2-image8.png](module4-lab7-exercise2-image8.png)

1. [] Add the following code to the very end and save your changes

    ```_ViewImports.cshtml-linenums
    @inject Microsoft.ApplicationInsights.AspNetCore.JavaScriptSnippet JavaScriptSnippet
    ```

1. [] In the **ModernUIApp** directory open the **\_Layout.cshtml** file found in the **Views\\Shared** directory

    !IMAGE[module4-lab7-exercise2-image9.png](module4-lab7-exercise2-image9.png)

1. [] Add the following line of code after line 17 and save your changes.

    ```_Layout.cshtml-linenums
    @Html.Raw(JavaScriptSnippet.FullScript)
    ```

    !IMAGE[module4-lab7-exercise2-image10.png](module4-lab7-exercise2-image10.png)

1. [] **Save all your file changes**.  We will try the changes you've made locally before we push them to repository and start the deployment process.

1. [] Return to your PowerShell window and stop the application if they are already running locally, and start them:

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiandUi.ps1
    .\startApiandUi.ps1
    ```

1. [] Open your browser and navigate to +++http://localhost:9090/customers+++.

    !IMAGE[module4-lab7-exercise2-image11.png](module4-lab7-exercise2-image11.png)

1. [] After about 5 minutes, navigate to the **Application Insights** resource screen in the Azure portal and refresh it. You can see that we are already recording data.

    !IMAGE[module4-lab7-exercise2-image12.png](module4-lab7-exercise2-image12.png)

1. [] Stop the application on your local computer.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\stopApiAndUi.ps1
    ```

1. [] From your PowerShell session, first stage and commit the changes in the **ModernApiAppSolution**

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernApiAppSolution'
    git add *
    git commit -m "Added Telemetry to the REST API"
    git push
    ```

    > [!NOTE] This will trigger your **modernapi.main** build pipeline and create a new image which will be deployed to your ACR in Azure

1. [] Now stage and commit the changes in the **ModernUiAppSolution**

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol\ModernUiAppSolution'
    git add *
    git commit -m "Added Telemetry to the UI"
    git push
    ```

    > [!NOTE] This will NOT trigger your **modernui.main** build pipeline.  We must submit a new Pull Request which will then merge these changes to the ModernUI to its main branch.  Then the .yml build will trigger and a new image will be deployed to your ACR.

1. [] We have tested our telemetry data in the REST API and the UI.  Keeping to our work item workflow, return to Azure DevOps Services and *push* your work item into **In Progress - Done** column.  This signals that you have completed this action and are now waiting for tests, pull requests, or other actions that will move your work item to Done.

    !IMAGE[module4-lab7-exercise2-image15.png](module4-lab7-exercise2-image15.png)

1. [] Create a new pull request for your changes. In Azure DevOps Services, click on **Repos** section then click on Files.  Click on **Create a pull request** button to start the process, then click on the **Create** button in the next page.

    !IMAGE[module4-lab7-exercise2-image16.png](module4-lab7-exercise2-image16.png)

1. [] Complete the pull request by clicking on **Approve**, then **Complete** to merge the changes to the main branch.  By clicking on **Approve** then **Complete** you are acting as a peer reviewer or code reviewer.  This action also moves your work item into the Done column on your board.

1. [] Clean up your local branches after you complete the pull request

    1. [] Switch from your local branch to your main branch.
    
        ```PowerShell-linenums
        Set-Location -Path 'c:\hol\ModernUiAppSolution'
        git checkout main
        ```

    1. [] At this point all your work has been on the topic branch which has now been merged into the remote main branch.  Your local main branch is now behind the remote main branch.  You must *pull* the changes that have been merged into the remote main to your local main.

        ```PowerShell-linenums
        git pull
        ```
    
    1. [] Delete your local branch

        ```PowerShell-linenums
        git branch -d topics/tb-###
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.
    
    1. [] Delete your remote tracking

        ```PowerShell-linenums
        git branch -dr origin/topics/tb-##
        ```
        > [!ALERT] Use your topic branch number.  ### will be the work item ID.

1. [] Return to your Azure DevOps Services and click on Pipelines under the Pipelines sections.

    !IMAGE[module4-lab7-exercise2-image17.png](module4-lab7-exercise2-image17.png)

1. [] Verify that your **modernui.main** and **modernapi.main** have both successfully executed.

    !IMAGE[module4-lab7-exercise2-image18.png](module4-lab7-exercise2-image18.png)

1. [] Click on **Infrastructure**, then click on the **Run Pipeline** button in the top right corner of the web page to create a new release.

    !IMAGE[module4-lab7-exercise2-image19.png](module4-lab7-exercise2-image19.png)

1. [] Once the **Infrastructure** release has completed you should see the following summary:

    !IMAGE[module4-lab7-exercise2-image20.png](module4-lab7-exercise2-image20.png)

1. [] Navigate to the **root** of your UI application on **Ring 0** using +++http://modernui-ring0-@lab.LabInstance.Id.eastus.azurecontainer.io+++

    !IMAGE[module4-lab7-exercise2-image21.png](module4-lab7-exercise2-image21.png)

1. [] Navigate to the **Customers** page of your UI application on **Ring 0** using +++http://modernui-ring0-@lab.LabInstance.Id.eastus.azurecontainer.io/Customers+++

    !IMAGE[module4-lab7-exercise2-image22.png](module4-lab7-exercise2-image22.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 3: Assess Basic Telemetry Information

### Introduction

In this exercise, you will learn how to view basic telemetry information from your application.

### Objectives

After completing this lab, you will be able to:

- Learn the basic telemetry concepts.

- Become familiar with some of the monitoring capabilities of Application Insights.

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)
1.  [Lab 6: Continous Delivery](#lab-6-continuous-delivery)  
1.  [Exercise 1: Setup the Telemetry Infrastructure](#exercise-1-setup-the-telemetry-infrastructure)
1.  [Exercise 2: Add Basic Telemetry to your Application](#exercise-2-add-basic-telemetry-to-your-application)

---

[Return to Module 4 Table of Contents](#toc4)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] We will start by generating some traffic for your application.  Open a new PowerShell 7 session:

    !IMAGE[module4-lab7-exercise3-image1.png](module4-lab7-exercise3-image1.png)

1. [] Copy the **startWebTest.ps1** file from the **C:\\DevOps Fundamentals Lab Material\\Lab 07 - Application Monitoring\\Exercise 3 - Assess Basic Telemetry Information\\** directory to your **c:\\hol** directory.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    Copy-Item -Path 'C:\DevOps Fundamentals Lab Material\Lab 07 - Application Monitoring\Exercise 3 - Assess Basic Telemetry Information\startWebTest.ps1' -Destination 'c:\hol\' -Force
    ```

1. [] Execute the **startWebTest.ps1** script using your **Ring 0** UI URL.  In a few seconds the traffic generation will start.

    ```PowerShell-linenums
    Set-Location -Path 'c:\hol'
    .\startWebTest.ps1 'http://modernui-ring0-@lab.LabInstance.Id.eastus.azurecontainer.io/customers'
    ```

    >[!ALERT] Do not change the contents of the .ps1.  It will generate sufficient traffic for analysis.

    !IMAGE[module4-lab7-exercise3-image2.png](module4-lab7-exercise3-image2.png)

1. [] Navigate to **Live Metrics** in the **modernap-monitoring** Application Insights resource

    !IMAGE[module4-lab7-exercise3-image4.png](module4-lab7-exercise3-image4.png)

1. [] You will see data being generated

    !IMAGE[module4-lab7-exercise3-image3.png](module4-lab7-exercise3-image3.png)

1. [] Click on the **Application Map** link from the left navigation menu.  This map will layout your application in a visual manner.  You will be able to see both your **Ring 0** and **Ring 1** resources and your SQL databases.

1. [] While in the **Application Map** click on **Exclude 4xx** turn on the inclusion of HTTP 404 status codes. We want to observe HTTP 404 (Page Not Found) errors.

    !IMAGE[module4-lab7-exercise3-image5.png](module4-lab7-exercise3-image5.png)

1. [] Click on the green circle in the middle to view the details on your running instances.

1. [] Click on **Investigate Performance** for the slowest requests.

    !IMAGE[module4-lab7-exercise3-image6.png](module4-lab7-exercise3-image6.png)

1. [] Click on the **Samples**, then click on the suggested request.

    !IMAGE[module4-lab7-exercise3-image7.png](module4-lab7-exercise3-image7.png)

1. [] We can see the details of the request performance data.

    !IMAGE[module4-lab7-exercise3-image8.png](module4-lab7-exercise3-image8.png)

1. [] Return to your **modernapp-monitoring** Application Insights resource by clicking on **modernapp-monitoring** in the breadcrumb navigation located at the top-right of the web page

    !IMAGE[module4-lab7-exercise3-image9.png](module4-lab7-exercise3-image9.png)

1. [] Click on **Overview**

    !IMAGE[module4-lab7-exercise3-image10.png](module4-lab7-exercise3-image10.png)

1. [] Click on **Application Dashboard**

    !IMAGE[module4-lab7-exercise3-image11.png](module4-lab7-exercise3-image11.png)

1. [] You can view your overall application health and information from this application dashboard

    !IMAGE[module4-lab7-exercise3-image12.png](module4-lab7-exercise3-image12.png)

1. [] Click on the **modernapp-monitoring** tile to return to your Application Insights resource

    !IMAGE[module4-lab7-exercise3-image13.png](module4-lab7-exercise3-image13.png)

1. [] From the left navigation, click on **Logs** under the **Monitoring** section to view your log data and write queries to help diagnose issues

    !IMAGE[module4-lab7-exercise3-image14.png](module4-lab7-exercise3-image14.png)

1. [] Click the **Run** button in the **Response Time Trend** report to view a graph over time of your application's response time.

    !IMAGE[module4-lab7-exercise3-image15.png](module4-lab7-exercise3-image15.png)

1. [] The **Response Time Trend** shows you over the last 12-hours, your application's response time. You can also create an alert with this data by clicking on the **+ New Alert Rule**.

    !IMAGE[module4-lab7-exercise3-image16.png](module4-lab7-exercise3-image16.png)

### Congratulations!

You have successfully completed this exercise. Click **Next** to advance to the next exercise.

===

# Exercise 4: Report Issues

### Introduction

In this exercise, you will learn how the reporting issues functionality works. You will get more hands-on experience working with Application Insights.

### Objectives

After completing this lab, you will be able to:

- Report issues with Application Insights

### Prerequisites

1.  [Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services)
1.  [Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git)
1.  [Lab 3: Shift-Left Testing](#lab-3-shift-left-testing)
1.  [Lab 4: Feature Flags](#lab-4-feature-flags)
1.  [Lab 5: Continuous Integration](#lab-5-continuous-integration)
1.  [Lab 6: Continous Delivery](#lab-6-continuous-delivery)  
1.  [Exercise 1: Setup the Telemetry Infrastructure](#exercise-1-setup-the-telemetry-infrastructure)
1.  [Exercise 2: Add Basic Telemetry to your Application](#exercise-2-add-basic-telemetry-to-your-application)
1.  [Exercise 3: Assess Telemetry Information](#exercise-3-assess-basic-telemetry-information)

---

[Return to Module 4 Table of Contents](#toc4)  
[Return to Lab Table of Contents](#0)

### Tasks

1. [] Return to your **Ring 0** customers page by navigating to +++http://modernui-ring0-@lab.LabInstance.Id.eastus.azurecontainer.io/customers+++

1. [] On any of the rows displayed, click on **Edit**.  Refresh your browser page while viewing the error a few times.

    > [!NOTE] This will throw a **HTTP 404: Page Not Found** error that we will capture in Application Insights.  Our Feature Flag development work for the CRM Program up to this point has only displayed customer data.  We have not implemented the Edit, Delete, or Details features.

1. [] From the error page, click on your browsers back button to return to your customer list

1. [] Click on **Application Map** in the left navigation, then click on the **modernapp-monitoring** green circle.

    !IMAGE[module4-lab7-exercise4-image1.png](module4-lab7-exercise4-image1.png)

1. [] In the **Top Failing Requests by Name** section you should see the errors you just caused by clicking on edit.  If you don't, click on **Refresh** in the top right and wait a moment

    !IMAGE[module4-lab7-exercise4-image2.png](module4-lab7-exercise4-image2.png)

1. [] Click on **Investigate Failures** button in the **Top Failing Requests by Name** section

1. [] In the **Drill into...** section, click on the button to view the operations

    !IMAGE[module4-lab7-exercise4-image3.png](module4-lab7-exercise4-image3.png)

1. [] Click on a sample requesting **GET /Customers/Edit** which resulted in an HTTP 404 Page Not Found error.  The details of the request will be displayed.

1. [] Click on **+ Create Work Item** located in the right side of the page to the top.  This will allow us to configure our Application Insights to report issue to Azure DevOps Services so they appear on the Web CRM backlog.

    !IMAGE[module4-lab7-exercise4-image4.png](module4-lab7-exercise4-image4.png)

1. [] Click on **Configure required settings** to link your Application Insights to your Azure DevOps Services project and start reporting telemetry events.  Fill the form out with the following information then click on **Authorize**:

    1. [] Tracking System:  **Azure DevOps Services**

    1. [] URL: +++https://dev.azure.com/Student1-@lab.LabInstance.Id+++

    1. [] Project: +++hol+++

    1. [] Advanced Configuration: **Off**

    1. [] Area: +++hol\Modern Portfolio\CRM Program\Web CRM+++

    1. [] Assigned to: +++Student1-@lab.LabInstance.Id@lodsasdoutlook.onmicrosoft.com+++

1. [] Click on **Authorize**, then click on **Accept**.  You will see **Authorization Complete** when you have successfully setup this integration.

    !IMAGE[module4-lab7-exercise4-image5.png](module4-lab7-exercise4-image5.png)

1. [] Then click **Ok** to create a new Bug work item using the telemetry information.

1. [] Go to your **Azure DevOps Services** boards and click on **Work Items** for the Web CRM team.  Click on the newly created bug, and change the **Iteration** to **Sprint 1**

    !IMAGE[module4-lab7-exercise4-image6.png](module4-lab7-exercise4-image6.png)

1. [] To manage your bugs as debt in each of your sprints, you need to configure your Web CRM team to evaluate bugs this way.  Click on **Project Settings**, then click on **Team Configuration** and choose the **Web CRM** team.

1. [] Choose **Bugs are managed with requirements.** then return to the Web CRM board

    !IMAGE[module4-lab7-exercise4-image7.png](module4-lab7-exercise4-image7.png)

1. [] Now when you enter sprint planning, you will consider any bugs or issues that come from **Ring 0** during this test.  Your Live Site Team will mitigate these issues and request builds as they are complete.

    !IMAGE[module4-lab7-exercise4-image8.png](module4-lab7-exercise4-image8.png)

=== 

# Congratulations!

You have successfully completed this Lab, to mark the lab as complete click **End**.  You have successfully completed the following DevOps Fundamentals lab exercises:

[Lab 1: Agile at Scale using Azure DevOps Services](#lab-1-agile-at-scale-using-azure-devops-services) **(120 minutes)**  
[Lab 2: Source Control Management using Git](#lab-2-source-control-management-using-git) **(90 minutes)**  
[Lab 3: Shift-Left Testing](#lab-3-shift-left-testing) **(90 minutes)**  
[Lab 4: Feature Flags](#lab-4-feature-flags) **(30 minutes)**  
[Lab 5: Continuous Integration](#lab-5-continuous-integration) **(60 minutes)**  
[Lab 6: Continous Delivery](#lab-6-continuous-delivery) **(90 minutes)**  
[Lab 7: Application Monitoring](#lab-7-application-monitoring) **(60 minutes)**  

You have completed roughly **540 minutes, or 9 hours** of lab time.  Please see your instructor for a certificate of completion.  Note: The one shown below may not be the actual certificate of completion.

Thank you for your hard work and dedication to DevOps Fundamentals!

!IMAGE[Certificate%20of%20Completion.png](Certificate%20of%20Completion.png)