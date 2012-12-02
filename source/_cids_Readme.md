#cids README
![Figure 0](http://www.cismet.de/images/faq-images/fis_wasser1.png)

Figure 0: The cids Navigator

The cids product suite consists of a set of services, applications, software components, management tools, development tools, and application programming interfaces (APIs) for the management, integration, and development of heterogeneous information systems with a special focus on interactive geo-spatial systems. It provides a distributed integration platform, which is particularly useful for workflows that need a combination of information and processes from different source systems such as GIS systems, relational databases, and simulation models. In this way it already provides and supports a considerable number of functionalities required for complex geospatial information systems, including user management and access control, search and discovery of relevant information and advanced interactive 2D visualisation (OGC WMS and WFS clients). 

![Figure 1](http://www.cismet.de/images/cidswhitepaper/fig1.png)

Figure 1: cids Client-Server Architecture

Figure 1: cids Client-Server Architecture shows that the SMS Framework is based on a client-server architecture in which an arbitrary number of client instances and server components co-exist in a service network, thus ensuring scalability and reliability. The components shown in Figure 9 are explained in detail in the following sections.

![Figure 2](http://www.cismet.de/images/faq-images/cids_components.png)

Figure 2: Framework Building Blocks

The Kernel represents a network of distributed services and consists of the following four components:

* Integration Base	

![Figure 3](http://www.cismet.de/images/cidswhitepaper/fig3.png)

* Domain Server		

The Navigator, shown as a customized version in Figure 0, is the default client for user interactions with the system. It offers a uniform, user-specific view of the integrated information systems and is particularly useful for cross-system search and retrieval in space, time, and textual content. It can also be used to manage the information in the network. It can be use e.g. as the management client for OGC compliant data access and model execution services, which are described as customised information classes in the underlying meta data model, thus offering common functionalities for the various users of the system. The Navigator features a plug-in mechanism that allows to easily integrate custom extensions in order to support workflows for specific end user tasks. The Navigator provides the following core functionalities through dedicated GUI components:

* Catalogue	

Figure 4: Catalogue Attribute View

![Figure 5](http://www.cismet.de/images/cidswhitepaper/fig5.png)

Figure 5: Catalogue Node and Object Management

* Search	



Figure 6: Custom Rainfall Render as Client for OGC SOS

* Editors	





- asynchronous WMS and WFS requests to load several WMS layers in parallel

![Figure 7](http://www.cismet.de/images/cidswhitepaper/fig8.png)

Figure 8: Map Component (cismap)



* Server Console	

Figure 10: Server Console

* JPresso	

Figure 11: JPresso

An application, based on cids components and tools described in this document, already fulfils most of the technical requirements of a generic geospatial infrastructure, open source components, web-based technologies, user-friendly graphical interfaces, security and access control mechanisms, and scalability. It represents a sound basis for the implementation core functionalities of complex geospatial informations systems like resource discovery, sharing and publishing of information and automation of tasks. 