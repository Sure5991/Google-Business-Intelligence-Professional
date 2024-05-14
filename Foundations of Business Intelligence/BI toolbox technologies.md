# Review technologies and best practices
As you continue through this program, you will be introduced to a variety of business intelligence tools that will help you create systems and processes and provide stakeholders with insights they can use to guide business decisions. Depending on the organization, you might end up using different tools over time. Luckily, the skills you are learning now can be transferred between tools. In this reading, you’ll be given some best practices for creating pipeline tools, data visualizations, and dashboards that you’ll be able to apply no matter what programs or tools your organization uses. 

## Optimal pipeline processes
Developing tools to optimize and automate certain data processes is a large part of a BI professional’s job. Being able to automate processes such as moving and transforming data saves users from having to do that work manually and empowers them with the ability to get answers quickly for themselves. There are a variety of tools that BI professionals use to create pipelines; and although there are some key differences between them, these are many best practices that apply no matter what tool you use. 

## Modular design
As you have learned, a data pipeline is a series of processes that transport data from different sources to their final destination for storage and analysis. A pipeline takes multiple processes and combines them into a system that automatically handles the data. Modular design principles can enable the development of individual pieces of a pipeline system so they can be treated as unique building blocks. Modular design also makes it possible to optimize and change individual components of a system without disrupting the rest of the pipeline. In addition, it helps users isolate and troubleshoot errors quickly. 

Other best practices related to modular design include using version control to track changes over time and undo any as needed. Also, BI professionals can create a separate development environment to test and review changes before implementing them.  

Other general software development best practices are also applicable to data pipelines.

## Verify data accuracy and integrity
The BI processes that move, transform, and report data findings for analysis are only useful if the data itself is accurate. Stakeholders need to be able to depend on the data they are accessing in order to make key business decisions. It’s also possible that incomplete or inaccurate data can cause errors within a pipeline system. Because of this, it’s necessary to ensure the accuracy and integrity of the data, no matter what tools you are using to construct the system. Some important things to consider about the data in your pipelines are: 

1. Completeness: Is the data complete?

2. Consistency: Are data values consistent across datasets?

3. Conformity: Do data values conform to the required format?

4. Accuracy: Do data values accurately represent actual values?

5. Redundancy: Are data values redundant within the same dataset?

6. Integrity: Are data values missing important relationships?

7. Timeliness: Is the data current?

Creating checkpoints in your pipeline system to address any of these issues before the data is delivered to the destination will save time and effort later on in the process! For example, you can add SQL scripts that test each stage for duplicates and will send an error alert if any are found.

## Creating a testing environment
Building the pipeline processes is only one aspect of creating data pipelines; it’s an iterative process that might require you to make updates and changes depending on how technology or business needs change. Because you will want to continue making improvements to the system, you need to create ways to test any changes before they’re implemented to avoid disrupting users’ access to the data. This could include creating a separate staging environment for data where you can run tests or including a stable dataset that you can make changes to and compare to current processes without interrupting the current flow. 

## Dynamic dashboards
Dashboards are powerful visual tools that help BI professionals empower stakeholders with data insights they can access and use when they need them. Dashboards track, analyze, and visualize data in order to answer questions and solve problems. The following table summarizes how BI professionals approach dashboards and how it differs from their stakeholders:

Element of the dashboard | BI professional tenets | Stakeholder tenets
:-----------------------:|:-----------------------:|:------------------:|
Centralization | Creating a single source of data for all stakeholders |Working with a comprehensive view of data that tracks their initiatives, objectives, projects, processes, and more
Visualization | Showing data in near-real time | Spotting changing trends and patterns more quickly
Insightfulness | Determining relevant information to include | Understanding a more holistic story behind the numbers to keep track of goals and make data-driven decisions
Customization | Creating custom views dedicated to a specific team or project | Drilling down to more specific areas of specialized interest or concern

Note that new data is pulled into dashboards automatically only if the data structure remains the same. If the data structure is different or altered, you will have to update the dashboard design before the data is automatically updated in your dashboard.

## Dashboards are part of a business journey
Just like how the dashboard on an airplane shows the pilot their flight path, your dashboard does the same for your stakeholders. It helps them navigate the path of the project inside the data. If you add clear markers and highlight important points on your dashboard, users will understand where your data story is headed. Then, you can work together to make sure the business gets where it needs to go. To learn more about designing dashboards, check out this reading from the Google Data Analytics Certificate: 
Designing compelling dashboards
. 

## Effective visualizations
Data visualizations are a key part of most dashboards, so you’ll want to ensure that you are creating effective visualizations. This requires organizing your thoughts using frameworks, incorporating key design principles, and ensuring you are avoiding misleading or inaccurate data visualizations by following best practices.

### Frameworks for organizing your thoughts about visualization
Frameworks can help you organize your thoughts about data visualization and give you a useful checklist to reference. Here are two frameworks that may be useful for you as you create your own data visualizations: 

The McCandless Method

Kaiser Fung’s Junk Charts Trifecta Checkup

### Pre-attentive attributes: marks and channels
Creating effective visuals involves considering how the brain works, then using specific visual elements to communicate the information effectively. Pre-attentive attributes are the elements of a data visualization that people recognize automatically without conscious effort. The essential, basic building blocks that make visuals immediately understandable are called marks and channels. 

### Design principles
Once you understand the pre-attentive attributes of data visualization, you can go on to design principles for creating effective visuals. These design principles are vital to your work as a data analyst because they help you make sure that you are creating visualizations that convey your data effectively to your audience. By keeping these rules in mind, you can plan and evaluate your data visualizations to decide if they are working for you and your goals. And, if they aren’t, you can adjust them! 

### Avoiding misleading or deceptive charts 
As you have been learning, BI provides people with insights and knowledge they can use to make decisions. So, it’s important that the visualizations you create are communicating your data accurately and truthfully. To learn more about effective visualizations, check out this reading from the Google Data Analytics Certificate: 
Effective data visualizations.
 

Make your visualizations accessible and useful to everyone in your audience by keeping in mind the following:

Labeling

Text alternatives

Text-based format

Distinguishing

Simplifying

To learn more about accessible visualizations, check out this video from the Google Data Analytics Certificate: 
Making Data Visualizations Accessible.

## Conclusion
As a BI professional, you will encounter a variety of tools for creating pipeline systems, developing dashboards to share with stakeholders, and creating effective visualizations to demonstrate your findings. Those tools require different skills, which take time and effort to learn. But often, you can apply your knowledge to numerous processes and systems.
