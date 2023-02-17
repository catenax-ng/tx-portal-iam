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

<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true bodyDivClass="login-container">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle", realm.name)}</title>
    <link rel="icon" href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjkuNjY5IiBoZWlnaHQ9IjI5LjU0IiB2aWV3Qm94PSIwIDAgMjkuNjY5IDI5LjU0Ij4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iODZ6Zmp6bm82YSIgeDE9Ii0yLjUzMiIgeTE9Ii41IiB4Mj0iLjk1MyIgeTI9Ii41IiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2ZkYjkxMyIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiNkMzExODQiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0ibXdyczBhNjd1YiIgeDE9Ii0uMDE3IiB4Mj0iMS41MzkiIHhsaW5rOmhyZWY9IiM4NnpmanpubzZhIi8+CiAgICA8L2RlZnM+CiAgICA8Zz4KICAgICAgICA8Y2lyY2xlIGRhdGEtbmFtZT0iRWxsaXBzZSA2OTEiIGN4PSI0LjI0NiIgY3k9IjQuMjQ2IiByPSI0LjI0NiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMjEuMTc3KSIgc3R5bGU9ImZpbGw6dXJsKCM4NnpmanpubzZhKSIvPgogICAgICAgIDxjaXJjbGUgZGF0YS1uYW1lPSJFbGxpcHNlIDY5MiIgY3g9IjQuMjQ2IiBjeT0iNC4yNDYiIHI9IjQuMjQ2IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMS4xNzcgMjEuMDQ3KSIgc3R5bGU9ImZpbGw6dXJsKCM4NnpmanpubzZhKSIvPgogICAgICAgIDxwYXRoIGRhdGEtbmFtZT0iUGF0aCA2MTU3IiBkPSJNOC40OTMgMjUuMjk0YTYuMjc3IDYuMjc3IDAgMCAxIDYuMjc3LTYuMjc3IDQuMjQ2IDQuMjQ2IDAgMCAwIDAtOC40OTMgNi4yNzcgNi4yNzcgMCAwIDEtNi4yNzctNi4yNzggNC4yNDYgNC4yNDYgMCAxIDAtNC4yNDcgNC4yNDcgNi4yNzcgNi4yNzcgMCAxIDEgMCAxMi41NTUgNC4yNDYgNC4yNDYgMCAxIDAgNC4yNDYgNC4yNDZ6IiBzdHlsZT0iZmlsbDp1cmwoI213cnMwYTY3dWIpIi8+CiAgICA8L2c+Cjwvc3ZnPgo=">
    <#--  <link rel="icon" href="${url.resourcesPath}/images/favicon.ico" />  -->
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
    <div class="signup-container">
      <#nested "form">
      <div class="signup-container__footer">
        <nav>
          <div>
            <a id="lnkHelp" href="${properties.helpUrl}">Help</a>
          </div>
          <div>
            <a id="lnkContact" href="${properties.contactUrl}">Contact</a>
          </div>
          <div>
            <a id="lnkImprint" href="${properties.imprintUrl}">Imprint</a>
          </div>
          <div>
            <a id="lnkPrivacy" href="${properties.privacyPolicyUrl}">Privacy</a>
          </div>
          <div>
            <a id="lnkTerms" href="${properties.termsUrl}">Terms of Service</a>
          </div>
          <div>
            <a id="lnkCookies" href="${properties.cookiePolicyUrl}">Cookie Policy</a>
          </div>
          <div>
            <a id="lnkLicenseNote" href="${properties.thirdPartyLicensesUrl}"
              >Third Party Licenses</a
            >
          </div>
        </nav>
        <span class="copyright">Copyright © Cofinity-X GmbH - All rights reserved.</span>
      </div>
    </div>
    <script>
</body>
</html>
</#macro>
