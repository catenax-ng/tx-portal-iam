<#--
- Copyright (c) 2021-2023 Contributors to the Eclipse Foundation
-
- See the NOTICE file(s) distributed with this work for additional
- information regarding copyright ownership.
-
- This program and the accompanying materials are made available under the
- terms of the Apache License, Version 2.0 which is available at
- https://www.apache.org/licenses/LICENSE-2.0.
-
- Unless required by applicable law or agreed to in writing, software
- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
- License for the specific language governing permissions and limitations
- under the License.
-
- SPDX-License-Identifier: Apache-2.0
-->

<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
        <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
            <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
                <#if realm.password>
                <div class="signup-container__body-parent">
                    <div class="signup-container__body-image-container">
                        <div class="union-logo"></div>
                        <img class="user-icon" src="${url.resourcesPath}/images/cofinity-X_logo.svg" alt="" />
                        <div class="union-logo-white"></div>
                    </div>

                    <div class="signup-container__body">
                        <div class="signup-container__body--header">
                            <div>
                                <h4>${msg("header")}</h4>
                                <p>
                                    ${msg("sub-header")}
                                </p>
                                <p><#if userError??>
                                        ${userError}
                                   </#if>
                                 </p>
                            </div>

                            <div>
                                <img src="${url.resourcesPath}/images/lock.svg" width="73" height="66" alt="" />
                            </div>
                        </div>

                        <div>
                            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                                <div class="form-control">
                                    <label>Company *</label>
                                    <input
                                        autocomplete="off"
                                        placeholder="Enter company name"
                                        id="companyname"
                                        name="companyname"
                                        type="text"
                                        value="${realm.name}"
                                        readonly
                                    />
                                </div>
                            
                                <div class="form-control">
                                    <label>Email *</label>
                                    <input
                                        autocomplete="off"
                                        placeholder="Enter email"
                                        id="username"
                                        name="username"
                                        type="text"
                                        autofocus
                                    />
                                    <#if emailError??>
                                        ${emailError}
                                   </#if>
                                </div>
                            
                                <div class="form-control">
                                    <label>Password *</label>
                                        <input
                                        autocomplete="off"
                                        placeholder="Enter password"
                                        id="password"
                                        name="password"
                                        type="password"
                                        autofocus
                                        />
                                        <#if pwdError??>
                                            ${pwdError}
                                        </#if>
                                </div>

                                <div class="form-control-button">
                                    <div>
                                        <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                                        <button name="login" type="submit" id="kc-login">${msg("login")}</button>
                                    </div>
                                    <div>
                                        <a>Forgot password?</a>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                            <div class="gray-bg">
                            <p>
                                ${msg("moreInfo")} <a href="${properties.helpUrl}">${msg("helpSection")}</a>.
                            </p>
                            </div>
                        </#if>
                    </div>
                </div>
                </#if>   
            </div>
        </div> 
    </#if>

</@layout.registrationLayout>
