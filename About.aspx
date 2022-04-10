<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WalkingLab.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/Timeline.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#contact").click(function () {
                $('#modalContact').modal('show');
            });
        });
    </script>
    <script src="https://use.typekit.net/bkt6ydm.js"></script>
    <script>try { Typekit.load({ async: true }); } catch (e) { }</script>

    <div class="ht-50"></div>

    <div class="row">
        <div class="col-12 col-md-9">
            <p class="title coral">Meng-Hsin Chen</p>
            <p class="subtitle coral lite">Engineer + Developer</p>
            <p class="lead">
                I'm an integration engineer based in Taiwan.<br />
                I'm a marathon finisher.<br />
                And I self-study programming.
            </p>
            <span class="short-line"></span>
            <p>
                <a id="contact" class="btn btn-outline-dark">Contact Me >></a>
                <a href="Resume.pdf" target="_blank" class="btn btn-outline-danger">My Resume >></a>
            </p>
        </div>
        <div class="col-12 col-md-3 text-center">
            <p>
                <img src="images/about.jpg" class="img-rounded" width="200" />
            </p>
            <p>
                <a href="#Expertise" class="badge rounded-pill bg-light text-dark">Expertise</a> /
                <a href="#Experience" class="badge rounded-pill bg-light text-dark">Experience</a> /
                <a href="#Education" class="badge rounded-pill bg-light text-dark">Education</a>
            </p>
        </div>
    </div>

    <div id="Expertise" class="example-title">
        <h2>Expertise</h2>
        <p>What I've learned and what I've been learning.</p>
    </div>

    <div class="row row-cols-1 row-cols-md-3">
        <div class="col">
            <div class="card h-100">
                <div class="card-header logo text-center">
                    Skills
                </div>
                <div class="card-body">
                    <h6 class="card-title coral">Programming</h6>
                    <ul>
                        <li>C#</li>
                        <li>ASP.NET</li>
                        <li>JavaScript</li>
                        <li>jQuery</li>
                        <li>HTML</li>
                        <li>CSS</li>
                    </ul>
                    <h6 class="card-title coral">Software</h6>
                    <ul>
                        <li>Visual Studio</li>
                        <li>MS Excel & VBA</li>
                        <li>Adobe Lightroom</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <div class="card-header logo text-center">
                    Knowledge
                </div>
                <div class="card-body">
                    <h6 class="card-title coral">Information Technology</h6>
                    <ul>
                        <li>SQL</li>
                        <li>RDBMS</li>
                        <li>Windows Forms</li>
                    </ul>
                    <p class="card-text">
                    </p>
                    <h6 class="card-title coral">Semiconductor Industrial</h6>
                    <ul>
                        <li>Advanced Packaging</li>
                        <li>Defect Analysis</li>
                        <li>Yield Improvement</li>
                        <li>Technology Management</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <div class="card-header logo text-center">
                    Certification
                </div>
                <div class="card-body">
                    <h6 class="card-title coral">Language</h6>
                    <h6 class="card-title">TOEFL iBT</h6>
                    <ul>
                        <li>112</li>
                        <li>Reading: 28</li>
                        <li>Listening: 29</li>
                        <li>Speaking: 28 (GFG)</li>
                        <li>Writing: 27 (GG)</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <%--<div class="row example-basic">
            <div class="col-md-12 example-title">
                <h2>Basic Timeline</h2>
                <p>Extra small devices (phones, less than 768px)</p>
            </div>
            <div class="col-xs-11 col-xs-offset-1 col-sm-8 col-sm-offset-1">
                <ul class="timeline">
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>March 12, 2016</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Event Title</h3>
                            <p>
                                Nullam vel sem. Nullam vel sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Donec vitae sapien ut libero venenatis faucibus. ullam dictum felis
                            eu pede mollis pretium. Pellentesque ut neque.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>March 23, 2016</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Event Title</h3>
                            <p>
                                Nullam vel sem. Nullam vel sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Donec vitae sapien ut libero venenatis faucibus. ullam dictum felis
                            eu pede mollis pretium. Pellentesque ut neque.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item period">
                        <div class="timeline-info"></div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h2 class="timeline-title">April 2016</h2>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>April 02, 2016</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Event Title</h3>
                            <p>
                                Nullam vel sem. Nullam vel sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Donec vitae sapien ut libero venenatis faucibus. ullam dictum felis
                            eu pede mollis pretium. Pellentesque ut neque.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>April 28, 2016</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Event Title</h3>
                            <p>
                                Nullam vel sem. Nullam vel sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Donec vitae sapien ut libero venenatis faucibus. ullam dictum felis
                            eu pede mollis pretium. Pellentesque ut neque.
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>--%>

        <div id="Experience" class="row example-split justify-content-md-center">
            <div class="col-md-12 example-title">
                <h2>Experience</h2>
                <p>Grow to become bigger than my problems.</p>
            </div>
            <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-1">
                <div>
                    <h3>TSMC</h3>
                    <p>
                        When talking about a Process Integration Engineer in the semiconductor industry, we think of someone who connects the customer and the foundry of manufacturing. My job is to deliver products to the customers with well-defined procedures. By self-studying programming and developed applications for internal usage, working smart is coming along with working hard.
                    </p>
                    <div class="ht-20"></div>
                </div>
                <ul class="timeline timeline-split">
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Apr 2022 - Present</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h4 class="timeline-title">System Integration Engineer</h4>
                            <ul>
                                <li>Used SQL(Oracle)/NoSQL(MongoDB) Database API to develop web applications based on ASP.NET framework for data analysis.
Developed Windows programs using C#, VBA, and SQL for productivity enhancement.</li>
                                <li>Communicated with internal users to define requirements, design/deploy/implement/test system, and continuous improvements.</li>
                                <li>Supervised a team of 5 engineering technicians to handle backend customer requests of new product design and satisfied
customer special demand.</li>
                            </ul>

                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Feb 2019 - Apr 2020</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h4 class="timeline-title">Technology Core Team Engineer</h4>
                            <ul>
                                <li>Defined the 1st process flow auto-creation SOP for TSMC 3DFabric.</li>
                                <li>Defined bumping/assembly technology infrastructure for 3D IC roadmap. (Division Stop & Fix Award Winner)</li>
                                <li>Handled process change with perfect quality management, considering interactions between technologies and processes.</li>
                            </ul>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Nov 2014 - Feb 2019</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h4 class="timeline-title">Process Integration Engineer</h4>
                            <ul>
                                <li>Developed InFO along with SoC throughout N16/N10/N7/N5 technology. (Suggestion Committee Award Winner)</li>
                                <li>Saved expense cost by constructing preserving methodologies of goods. (Division Contribution Award)</li>
                                <li>Collaborated with customers on inline issue resolution and yield improvement.</li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div id="Education" class="row example-centered justify-content-md-center">
            <div class="col-md-12 example-title">
                <h2>Education</h2>
                <p>No one is born with it.</p>
            </div>
            <div class="">
                <ul class="timeline timeline-centered">
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>...Ever after</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Self Learner</h3>
                            <p><span class="material-icons">mood</span></p>
                        </div>
                    </li>
                    <li class="timeline-item period">
                        <div class="timeline-info"></div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h2 class="timeline-title">Master</h2>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Aug 2014</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Master's Degree</h3>
                            <p>
                                MSc in Materials Science and Engineering, National Taiwan University.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Jul 2013</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Exchange Program</h3>
                            <p>
                                Institute of Technology, Linköping University. (Linköping, SE)
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Jun 2013</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Thesis Defense</h3>
                            <p>
                                Thesis: Interfacial Reactions Between Copper Substrate and Lead-Free Solder for 3D IC Applications.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Nov 2012</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Poster</h3>
                            <p>
                                Material Research Society-Taiwan (MRS-T). (Yunlin, TW)
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Mar 2012</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Session Presenter</h3>
                            <p>
                                TMS 2012 Annual Meeting & Exhibition - Effects of Ultrafine Joints and Alloy/microstructure Relationships Session. (Orlando, FL)
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Sep 2011</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Graduate Research Assistant</h3>
                            <p>
                                Advanced Chip Packaging Laboratory (ACPL), Advisor: Prof. C. Robert Kao.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item period">
                        <div class="timeline-info"></div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h2 class="timeline-title">Bachelor</h2>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Jun 2011</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Bachelor's Degree</h3>
                            <p>
                                BS in Materials Science and Engineering, National Taiwan University.
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Jul 2010</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Visiting Student</h3>
                            <p>
                                Hertford College, University of Oxford. (Oxford, UK)
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>Sep 2007</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">College Student</h3>
                            <p>
                                Department of Materials Science and Engineering, National Taiwan University. (Taipei, TW)
                            </p>
                        </div>
                    </li>
                    <li class="timeline-item">
                        <div class="timeline-info">
                            <span>May 1989</span>
                        </div>
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h3 class="timeline-title">Born in Taipei</h3>
                            <p>
                                Hi there!
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalContact" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Let's connect!</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <p>
                        <img src="images/about.jpg" class="img-rounded img-h200" />
                    </p>
                    <p>Find me via</p>
                    <p>
                        <a href="mailto:walkproudly@gmail.com"><span class="material-icons md-18">email</span></a><br />
                        <a href="https://www.linkedin.com/in/meng-hsin-chen/" target="_blank">LinkedIn</a> |
                        <a href="https://github.com/menghsinchen" target="_blank">GitHub</a> |
                        <a href="https://www.instagram.com/walkingallery/" target="_blank">Instagram</a> |
                        <a href="https://www.facebook.com/menghsinchen" target="_blank">Facebook</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
