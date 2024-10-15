<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_sign_up.aspx.cs" Inherits="WebApplication1.User_sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" style="background-color:antiquewhite">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" style="width: 100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Registration</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Full name </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full name "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>
                                    Date of Birth
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>
                                    E-mail ID
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-mail ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Country</label>
                                <div class="form-group">

                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
    <asp:ListItem Text="Select" Value="select" />
    <asp:ListItem Text="Afghanistan" Value="Afghanistan" />
    <asp:ListItem Text="Albania" Value="Albania" />
    <asp:ListItem Text="Algeria" Value="Algeria" />
    <asp:ListItem Text="Andorra" Value="Andorra" />
    <asp:ListItem Text="Angola" Value="Angola" />
    <asp:ListItem Text="Antigua and Barbuda" Value="Antigua and Barbuda" />
    <asp:ListItem Text="Argentina" Value="Argentina" />
    <asp:ListItem Text="Armenia" Value="Armenia" />
    <asp:ListItem Text="Australia" Value="Australia" />
    <asp:ListItem Text="Austria" Value="Austria" />
    <asp:ListItem Text="Austrian Empire*" Value="Austrian Empire*" />
    <asp:ListItem Text="Azerbaijan" Value="Azerbaijan" />
    <asp:ListItem Text="Bahamas, The" Value="Bahamas, The" />
    <asp:ListItem Text="Bahrain" Value="Bahrain" />
    <asp:ListItem Text="Bangladesh" Value="Bangladesh" />
    <asp:ListItem Text="Barbados" Value="Barbados" />
    <asp:ListItem Text="Bavaria*" Value="Bavaria*" />
    <asp:ListItem Text="Belarus" Value="Belarus" />
    <asp:ListItem Text="Belgium" Value="Belgium" />
    <asp:ListItem Text="Belize" Value="Belize" />
    <asp:ListItem Text="Benin (Dahomey)" Value="Benin (Dahomey)" />
    <asp:ListItem Text="Bolivia" Value="Bolivia" />
    <asp:ListItem Text="Bosnia and Herzegovina" Value="Bosnia and Herzegovina" />
    <asp:ListItem Text="Botswana" Value="Botswana" />
    <asp:ListItem Text="Brazil" Value="Brazil" />
    <asp:ListItem Text="Brunei" Value="Brunei" />
    <asp:ListItem Text="Brunswick and Lüneburg*" Value="Brunswick and Lüneburg*" />
    <asp:ListItem Text="Bulgaria" Value="Bulgaria" />
    <asp:ListItem Text="Burkina Faso (Upper Volta)" Value="Burkina Faso (Upper Volta)" />
    <asp:ListItem Text="Burma" Value="Burma" />
    <asp:ListItem Text="Burundi" Value="Burundi" />
    <asp:ListItem Text="Cabo Verde" Value="Cabo Verde" />
    <asp:ListItem Text="Cambodia" Value="Cambodia" />
    <asp:ListItem Text="Cameroon" Value="Cameroon" />
    <asp:ListItem Text="Canada" Value="Canada" />
    <asp:ListItem Text="Cayman Islands, The" Value="Cayman Islands, The" />
    <asp:ListItem Text="Central African Republic" Value="Central African Republic" />
    <asp:ListItem Text="Central American Federation*" Value="Central American Federation*" />
    <asp:ListItem Text="Chad" Value="Chad" />
    <asp:ListItem Text="Chile" Value="Chile" />
    <asp:ListItem Text="China" Value="China" />
    <asp:ListItem Text="Colombia" Value="Colombia" />
    <asp:ListItem Text="Comoros" Value="Comoros" />
    <asp:ListItem Text="Congo Free State, The*" Value="Congo Free State, The*" />
    <asp:ListItem Text="Costa Rica" Value="Costa Rica" />
    <asp:ListItem Text="Cote d’Ivoire (Ivory Coast)" Value="Cote d’Ivoire (Ivory Coast)" />
    <asp:ListItem Text="Croatia" Value="Croatia" />
    <asp:ListItem Text="Cuba" Value="Cuba" />
    <asp:ListItem Text="Cyprus" Value="Cyprus" />
    <asp:ListItem Text="Czechia" Value="Czechia" />
    <asp:ListItem Text="Czechoslovakia*" Value="Czechoslovakia*" />
    <asp:ListItem Text="Democratic Republic of the Congo" Value="Democratic Republic of the Congo" />
    <asp:ListItem Text="Denmark" Value="Denmark" />
    <asp:ListItem Text="Djibouti" Value="Djibouti" />
    <asp:ListItem Text="Dominica" Value="Dominica" />
    <asp:ListItem Text="Dominican Republic" Value="Dominican Republic" />
    <asp:ListItem Text="Duchy of Parma, The*" Value="Duchy of Parma, The*" />
    <asp:ListItem Text="East Germany (German Democratic Republic)*" Value="East Germany (German Democratic Republic)*" />
    <asp:ListItem Text="Ecuador" Value="Ecuador" />
    <asp:ListItem Text="Egypt" Value="Egypt" />
    <asp:ListItem Text="El Salvador" Value="El Salvador" />
    <asp:ListItem Text="Equatorial Guinea" Value="Equatorial Guinea" />
    <asp:ListItem Text="Eritrea" Value="Eritrea" />
    <asp:ListItem Text="Estonia" Value="Estonia" />
    <asp:ListItem Text="Eswatini" Value="Eswatini" />

    <asp:ListItem Text="Ethiopia" Value="Ethiopia" />
    <asp:ListItem Text="Federal Government of Germany (1848-49)*" Value="Federal Government of Germany (1848-49)*" />
    <asp:ListItem Text="Fiji" Value="Fiji" />
    <asp:ListItem Text="Finland" Value="Finland" />
    <asp:ListItem Text="France" Value="France" />
    <asp:ListItem Text="Gabon" Value="Gabon" />
    <asp:ListItem Text="Gambia, The" Value="Gambia, The" />
    <asp:ListItem Text="Georgia" Value="Georgia" />
    <asp:ListItem Text="Germany" Value="Germany" />
    <asp:ListItem Text="Ghana" Value="Ghana" />
    <asp:ListItem Text="Grand Duchy of Tuscany, The*" Value="Grand Duchy of Tuscany, The*" />
    <asp:ListItem Text="Greece" Value="Greece" />
    <asp:ListItem Text="Grenada" Value="Grenada" />
    <asp:ListItem Text="Guatemala" Value="Guatemala" />
    <asp:ListItem Text="Guinea" Value="Guinea" />
    <asp:ListItem Text="Guinea-Bissau" Value="Guinea-Bissau" />
    <asp:ListItem Text="Guyana" Value="Guyana" />
    <asp:ListItem Text="Haiti" Value="Haiti" />
    <asp:ListItem Text="Hanover*" Value="Hanover*" />
    <asp:ListItem Text="Hanseatic Republics*" Value="Hanseatic Republics*" />
    <asp:ListItem Text="Hawaii*" Value="Hawaii" />
    <asp:ListItem Text="Hesse*" Value="Hesse*" />
    <asp:ListItem Text="Holy See" Value="Holy See" />
    <asp:ListItem Text="Honduras" Value="Honduras" />
    <asp:ListItem Text="Hungary" Value="Hungary" />
    <asp:ListItem Text="Iceland" Value="Iceland" />
    <asp:ListItem Text="India" Value="India" />
    <asp:ListItem Text="Indonesia" Value="Indonesia" />
    <asp:ListItem Text="Iran" Value="Iran" />
    <asp:ListItem Text="Iraq" Value="Iraq" />
    <asp:ListItem Text="Ireland" Value="Ireland" />
    <asp:ListItem Text="Israel" Value="Israel" />
    <asp:ListItem Text="Italy" Value="Italy" />
    <asp:ListItem Text="Jamaica" Value="Jamaica" />
    <asp:ListItem Text="Japan" Value="Japan" />
    <asp:ListItem Text="Jordan" Value="Jordan" />
    <asp:ListItem Text="Kazakhstan" Value="Kazakhstan" />
    <asp:ListItem Text="Kenya" Value="Kenya" />
    <asp:ListItem Text="Kingdom of Serbia/Yugoslavia*" Value="Kingdom of Serbia/Yugoslavia*" />
    <asp:ListItem Text="Kiribati" Value="Kiribati" />
    <asp:ListItem Text="Korea" Value="Korea" />
    <asp:ListItem Text="Kosovo" Value="Kosovo" />
    <asp:ListItem Text="Kuwait" Value="Kuwait" />
    <asp:ListItem Text="Kyrgyzstan" Value="Kyrgyzstan" />
    <asp:ListItem Text="Laos" Value="Laos" />
    <asp:ListItem Text="Latvia" Value="Latvia" />
    <asp:ListItem Text="Lebanon" Value="Lebanon" />
    <asp:ListItem Text="Lesotho" Value="Lesotho" />
    <asp:ListItem Text="Lew Chew (Loochoo)*" Value="Lew Chew (Loochoo)*" />
    <asp:ListItem Text="Liberia" Value="Liberia" />
    <asp:ListItem Text="Libya" Value="Libya" />
    <asp:ListItem Text="Liechtenstein" Value="Liechtenstein" />
    <asp:ListItem Text="Lithuania" Value="Lithuania" />
    <asp:ListItem Text="Luxembourg" Value="Luxembourg" />
    <asp:ListItem Text="Madagascar" Value="Madagascar" />
    <asp:ListItem Text="Malawi" Value="Malawi" />
    <asp:ListItem Text="Malaysia" Value="Malaysia" />
    <asp:ListItem Text="Maldives" Value="Maldives" />
    <asp:ListItem Text="Mali" Value="Mali" />
    <asp:ListItem Text="Malta" Value="Malta" />
    <asp:ListItem Text="Marshall Islands" Value="Marshall Islands" />
    <asp:ListItem Text="Mauritania" Value="Mauritania" />
    <asp:ListItem Text="Mauritius" Value="Mauritius" />
    <asp:ListItem Text="Mecklenburg-Schwerin*" Value="Mecklenburg-Schwerin*" />
    <asp:ListItem Text="Mecklenburg-Strelitz*" Value="Mecklenburg-Strelitz*" />
    <asp:ListItem Text="Mexico" Value="Mexico" />
    <asp:ListItem Text="Micronesia" Value="Micronesia" />
    <asp:ListItem Text="Moldova" Value="Moldova" />
    <asp:ListItem Text="Monaco" Value="Monaco" />
    <asp:ListItem Text="Mongolia" Value="Mongolia" />
    <asp:ListItem Text="Montenegro" Value="Montenegro" />
    <asp:ListItem Text="Morocco" Value="Morocco" />
    <asp:ListItem Text="Mozambique" Value="Mozambique" />

    <asp:ListItem Text="Namibia" Value="Namibia" />
    <asp:ListItem Text="Nassau*" Value="Nassau*" />
    <asp:ListItem Text="Nauru" Value="Nauru" />
    <asp:ListItem Text="Nepal" Value="Nepal" />
    <asp:ListItem Text="Netherlands, The" Value="Netherlands, The" />
    <asp:ListItem Text="New Zealand" Value="New Zealand" />
    <asp:ListItem Text="Nicaragua" Value="Nicaragua" />
    <asp:ListItem Text="Niger" Value="Niger" />
    <asp:ListItem Text="Nigeria" Value="Nigeria" />
    <asp:ListItem Text="North German Confederation*" Value="North German Confederation*" />
    <asp:ListItem Text="North German Union*" Value="North German Union*" />
    <asp:ListItem Text="North Macedonia" Value="North Macedonia" />
    <asp:ListItem Text="Norway" Value="Norway" />
    <asp:ListItem Text="Oldenburg*" Value="Oldenburg*" />
    <asp:ListItem Text="Oman" Value="Oman" />
    <asp:ListItem Text="Orange Free State*" Value="Orange Free State*" />
    <asp:ListItem Text="Pakistan" Value="Pakistan" />
    <asp:ListItem Text="Palau" Value="Palau" />
    <asp:ListItem Text="Panama" Value="Panama" />
    <asp:ListItem Text="Papal States*" Value="Papal States*" />
    <asp:ListItem Text="Papua New Guinea" Value="Papua New Guinea" />
    <asp:ListItem Text="Paraguay" Value="Paraguay" />
    <asp:ListItem Text="Peru" Value="Peru" />
    <asp:ListItem Text="Philippines" Value="Philippines" />
    <asp:ListItem Text="Piedmont-Sardinia*" Value="Piedmont-Sardinia*" />
    <asp:ListItem Text="Poland" Value="Poland" />
    <asp:ListItem Text="Portugal" Value="Portugal" />
    <asp:ListItem Text="Qatar" Value="Qatar" />
    <asp:ListItem Text="Republic of Genoa*" Value="Republic of Genoa*" />
    <asp:ListItem Text="Republic of Korea (South Korea)" Value="Republic of Korea (South Korea)" />
    <asp:ListItem Text="Republic of the Congo" Value="Republic of the Congo" />
    <asp:ListItem Text="Romania" Value="Romania" />
    <asp:ListItem Text="Russia" Value="Russia" />
    <asp:ListItem Text="Rwanda" Value="Rwanda" />
    <asp:ListItem Text="Saint Kitts and Nevis" Value="Saint Kitts and Nevis" />
    <asp:ListItem Text="Saint Lucia" Value="Saint Lucia" />
    <asp:ListItem Text="Saint Vincent and the Grenadines" Value="Saint Vincent and the Grenadines" />
    <asp:ListItem Text="Samoa" Value="Samoa" />
    <asp:ListItem Text="San Marino" Value="San Marino" />
    <asp:ListItem Text="Sao Tome and Principe" Value="Sao Tome and Principe" />
    <asp:ListItem Text="Saudi Arabia" Value="Saudi Arabia" />
    <asp:ListItem Text="Schaumburg-Lippe*" Value="Schaumburg-Lippe*" />
    <asp:ListItem Text="Senegal" Value="Senegal" />
    <asp:ListItem Text="Serbia" Value="Serbia" />
    <asp:ListItem Text="Seychelles" Value="Seychelles" />
    <asp:ListItem Text="Sierra Leone" Value="Sierra Leone" />
    <asp:ListItem Text="Singapore" Value="Singapore" />
    <asp:ListItem Text="Slovakia" Value="Slovakia" />
    <asp:ListItem Text="Slovenia" Value="Slovenia" />
    <asp:ListItem Text="Solomon Islands, The" Value="Solomon Islands, The" />
    <asp:ListItem Text="Somalia" Value="Somalia" />
    <asp:ListItem Text="South Africa" Value="South Africa" />
    <asp:ListItem Text="South Sudan" Value="South Sudan" />
    <asp:ListItem Text="Spain" Value="Spain" />
    <asp:ListItem Text="Sri Lanka" Value="Sri Lanka" />
    <asp:ListItem Text="Sudan" Value="Sudan" />
    <asp:ListItem Text="Suriname" Value="Suriname" />
    <asp:ListItem Text="Sweden" Value="Sweden" />
    <asp:ListItem Text="Switzerland" Value="Switzerland" />
    <asp:ListItem Text="Syria" Value="Syria" />
    <asp:ListItem Text="Tajikistan" Value="Tajikistan" />
    <asp:ListItem Text="Tanzania" Value="Tanzania" />
    <asp:ListItem Text="Texas*" Value="Texas*" />
    <asp:ListItem Text="Thailand" Value="Thailand" />
    <asp:ListItem Text="Timor-Leste" Value="Timor-Leste" />
    <asp:ListItem Text="Togo" Value="Togo" />
    <asp:ListItem Text="Tonga" Value="Tonga" />
    <asp:ListItem Text="Trinidad and Tobago" Value="Trinidad and Tobago" />
    <asp:ListItem Text="Tunisia" Value="Tunisia" />

    <asp:ListItem Text="Turkey" Value="Turkey" />
    <asp:ListItem Text="Turkmenistan" Value="Turkmenistan" />
    <asp:ListItem Text="Tuvalu" Value="Tuvalu" />
    <asp:ListItem Text="Two Sicilies*" Value="Two Sicilies*" />
    <asp:ListItem Text="Uganda" Value="Uganda" />
    <asp:ListItem Text="Ukraine" Value="Ukraine" />
    <asp:ListItem Text="Union of Soviet Socialist Republics*" Value="Union of Soviet Socialist Republics*" />
    <asp:ListItem Text="United Arab Emirates, The" Value="United Arab Emirates, The" />
    <asp:ListItem Text="United Kingdom, The" Value="United Kingdom, The" />
    <asp:ListItem Text="Uruguay" Value="Uruguay" />
    <asp:ListItem Text="Uzbekistan" Value="Uzbekistan" />
    <asp:ListItem Text="Vanuatu" Value="Vanuatu" />
    <asp:ListItem Text="Venezuela" Value="Venezuela" />
    <asp:ListItem Text="Vietnam" Value="Vietnam" />
    <asp:ListItem Text="Württemberg*" Value="Württemberg*" />
    <asp:ListItem Text="Yemen" Value="Yemen" />
    <asp:ListItem Text="Zambia" Value="Zambia" />
    <asp:ListItem Text="Zimbabwe" Value="Zimbabwe" />


</asp:DropDownList>

                                 
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    City
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    Post Code
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Post Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Full Adress </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Adress" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                <div class="form-group d-grid gap-2">
                                    <center><span class="badge rounded-pill text-bg-info">Login Credentials</span></center>
                               </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User ID </label>
                                        <div class="form-group">
                                            <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>
                                            Password
                                        </label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-info" ID="Button2" runat="server" Text="Register"
                                        OnClick="Button2_Click" />                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <a href="homepage.aspx" style="text-align: left !important;">Back to home</a>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
