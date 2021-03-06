{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
	<div class="loader">
		<div class="intro">
		  <svg xmlns="http://www.w3.org/2000/svg" id="panda" viewBox="0 0 510 368.2" enable-background="new 0 0 510 368.2">
		    <path opacity=".4" fill="#2C2C2C" d="M32.3 248.1l11.5-163.7 45.2 117.8z"/>
		    <path opacity=".4" fill="#353535" d="M32.3 248.1l82.3 13.9-25.6-59.8z"/>
		    <path opacity=".4" fill="#3D3D3D" d="M32.3 248.1l78.3 54.7 4-40.8z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M110.6 302.8l27.7 39.8-23.7-80.6z"/>
		    <path opacity=".4" fill="#3D3D3D" d="M43.8 84.4l117.8 160.2-56.5-4.8-16.1-37.6z"/>
		    <path opacity=".4" fill="#D8D8D8" d="M161.6 244.6l68.3-4.3-65.6-124z"/>
		    <path opacity=".4" fill="#EAEAEA" d="M164.3 116.3l-2.7 128.3-117.8-160.2z"/>
		    <path opacity=".4" fill="#F4F4F4" d="M164.3 116.3l10.2-97.3-130.7 65.4z"/>
		    <path opacity=".4" fill="#3D3D3D" d="M174.5 19l-10.2 97.3 119-69.9z"/>
		    <path opacity=".4" fill="#353535" d="M252.9 280.8l140-8.6 57.4 71.8z"/>
		    <path opacity=".4" fill="#3D3D3D" d="M252.9 280.8l-23-40.5 124-45.4z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M252.9 280.8l101-85.9 39 77.3z"/>
		    <path opacity=".4" fill="#444444" d="M164.3 116.3l189.6 78.6-124 45.4z"/>
		    <path opacity=".4" fill="#353535" d="M283.3 46.4l1.9 48.1-120.9 21.8z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M285.2 94.5l68.7 100.4-189.6-78.6z"/>
		    <path opacity=".4" fill="#353535" d="M105.1 239.8l42.5 37.3 31.1-3.5-17.1-29z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M147.6 277.1l50.9 17-19.8-20.5z"/>
		    <path opacity=".4" fill="#444444" d="M283.3 46.4l70.6 148.5-68.7-100.4z"/>
		    <path opacity=".4" fill="#F4F4F4" d="M283.3 46.4l133.7 47.6-63.1 100.9z"/>
		    <path opacity=".4" fill="#D8D8D8" d="M353.9 194.7l104.9 26.1-86.7 9.8z"/>
		    <path opacity=".4" fill="#EAEAEA" d="M417 94l14.9 87.7-78 13z"/>
		    <path opacity=".4" fill="#F9F9F9" d="M431.9 181.7l26.9 39.1-104.9-26.1z"/>
		    <path opacity=".4" fill="#D8D8D8" d="M431.9 181.7l13.6-29.5-28.5-58.2z"/>
		    <path opacity=".4" fill="#EAEAEA" d="M417 94l53.5 35.9-25 22.3z"/>
		    <path opacity=".4" fill="#F4F4F4" d="M445.5 152.2l13.3 68.6-26.9-39.1z"/>
		    <path opacity=".4" fill="#F9F9F9" d="M450.8 179.6l20-19.5-12 60.7z"/>
		    <path opacity=".4" fill="#EAEAEA" d="M470.8 160.1l4.7 41.7-16.7 19z"/>
		    <path opacity=".4" fill="#D8D8D8" d="M475.5 201.8l17.2 5.4-33.9 13.6z"/>
		    <path opacity=".4" fill="#F9F9F9" d="M470.8 160.1l24.8 28.6-20.1 13.1z"/>
		    <path opacity=".4" fill="#EAEAEA" d="M475.5 201.8l20.1-13.1-2.9 18.5z"/>
		    <path opacity=".4" fill="#353535" d="M445.5 152.2l25.3 7.9-20 19.5z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M445.5 152.2l25.3 7.9-.3-30.2zM388.5 263.6l67.2 29.4-36.4-35.1z"/>
		    <path opacity=".4" fill="#353535" d="M419.3 257.9l-13.9-31.1-33.3 3.8 16.4 33z"/>
		    <path opacity=".4" fill="#2C2C2C" d="M417 94l14.6-14.7 19.2 1.9z"/>
		    <path opacity=".4" fill="#353535" d="M450.8 81.2l.5 35.8-34.3-23"/>

		    <path opacity=".26" id="path-0" stroke="#000" stroke-miterlimit="10" fill="none" d="M285.2 18.5l6.7 71.9 62 96.1M291.7 90.2l-118.9 19.3v-100.2M24 75.4l149 34.1-11.4 140.8M219.9 258.1l-46.9-148.6 180.9 77M353.9 186.5l-134 71.6 28 25.8M247.9 283.9l106-97.4M247.9 283.9l138.1-6.8M247.9 283.9l212.9 68-74.8-74.8M173 109.5l112.2-91M417 84.4l-63.1 102.1M285.2 18.5l68.7 168M285.2 18.5l131.8 65.9M173 9.9l114.8 9.9M24 75.4l149-65.5M23.8 75.3v174M24 249.9l56.7-32.6M80.7 217.3l-56.7-141.9M24 75.4l137.6 174.9M24 249.9l85.2 13.7M80.7 217.3c.4.3 28.5 46.3 28.5 46.3M24 249.9l81.1 66.7M105.1 316.6l4.1-53M105.1 316.6l29.5 38.6M134.6 355.2l-25.4-91.6M109.2 263.6l52.4-13.3M109.2 263.6l29.1 17.2M138.3 280.8l30-5.4M161.6 250.3l6.7 25.1M138.3 280.8l57.4 15.8-27.4-21.2M161.6 250.3l58.3 7.8M353.9 186.5l32.1 90.6M353.9 186.5l110.2 47-95.1-2.9M417.2 84.4l6.9 94-70.2 8.1M424.1 178.4l40 55.1M417 84.4l61.7 39.9-37.6 27.9M417 84.4l24.1 67.8M424.1 178.4l17-26.2M441.1 152.2l23 81.3M441.1 152.2l23 7.9 14.6-35.8M464.1 160.1l-13.3 23.7M463.8 159.3v74M464.1 160.1l31.5 32.8M464.1 233.5l14.5-30.7-14.5-42.7M478.6 202.8l17-9.9M464.5 233.4l31.1-23.4.1-17.3M478.6 202.8l17 7.2M417.3 83.8h41.5l-6 23M417 84.4l17.1-9 24.7 9"/>

		    <circle opacity=".26" cx="24"  cy="75.4" r="3.4"/>
		    <circle opacity=".26" cx="24"  cy="250.4" r="3.4"/>
		    <circle opacity=".26" cx="109" cy="263.4" r="3.4"/>
		    <circle opacity=".26" cx="105" cy="316.4" r="3.4"/>
		    <circle opacity=".26" cx="81"  cy="217.4" r="3.4"/>
		    <circle opacity=".26" cx="135" cy="355.4" r="3.4"/>
		    <circle opacity=".26" cx="162" cy="250.4" r="3.4"/>
		    <circle opacity=".26" cx="138" cy="280.4" r="3.4"/>
		    <circle opacity=".26" cx="168" cy="275.4" r="3.4"/>
		    <circle opacity=".26" cx="197" cy="296.4" r="3.4"/>
		    <circle opacity=".26" cx="220" cy="258.4" r="3.4"/>
		    <circle opacity=".26" cx="248" cy="284.4" r="3.4"/>
		    <circle opacity=".26" cx="173" cy="109.4" r="3.4"/>
		    <circle opacity=".26" cx="173" cy="10.4" r="3.4"/>
		    <circle opacity=".26" cx="285" cy="18.4" r="3.4"/>
		    <circle opacity=".26" cx="292" cy="90.4" r="3.4"/>
		    <circle opacity=".26" cx="354" cy="186.4" r="3.4"/>
		    <circle opacity=".26" cx="386" cy="277.4" r="3.4"/>
		    <circle opacity=".26" cx="461" cy="352.4" r="3.4"/>

		    <path opacity=".26" id="path-1" stroke="#000" stroke-miterlimit="10" fill="none" d="M408.7 231.8l7.2 29.6 41.7 38.7M415.9 261.4l-29.9 15.7M457.6 300.1l-71.6-23"/>

		    <circle opacity=".26" cx="458" cy="300.4" r="3.4"/>
		    <circle opacity=".26" cx="416" cy="261.4" r="3.4"/>
		    <circle opacity=".26" cx="409" cy="231.4" r="3.4"/>
		    <circle opacity=".26" cx="370" cy="230.4" r="3.4"/>
		    <circle opacity=".26" cx="464" cy="233.4" r="3.4"/>
		    <circle opacity=".26" cx="424" cy="178.4" r="3.4"/>
		    <circle opacity=".26" cx="451" cy="183.4" r="3.4"/>
		    <circle opacity=".26" cx="441" cy="152.4" r="3.4"/>
		    <circle opacity=".26" cx="464" cy="160.4" r="3.4"/>
		    <circle opacity=".26" cx="478" cy="203.4" r="3.4"/>
		    <circle opacity=".26" cx="496" cy="192.4" r="3.4"/>
		    <circle opacity=".26" cx="496" cy="210.4" r="3.4"/>
		    <circle opacity=".26" cx="479" cy="124.4" r="3.4"/>
		    <circle opacity=".26" cx="417" cy="84.4"  r="3.4"/>
		    <circle opacity=".26" cx="434" cy="75.4"  r="3.4"/>
		    <circle opacity=".26" cx="459" cy="84.4"  r="3.4"/>
		    <circle opacity=".26" cx="453" cy="107.4" r="3.4"/>
		  </svg>

		  <svg xmlns="http://www.w3.org/2000/svg" id="logo" viewBox="0 0 444.4 123.7" enable-background="new 0 0 444.4 123.7"><path d="M92.8 54.5h-20.9l.3 31.9c.2 10.8-6.6 10.8-21.4 10.8-.4-2.4-1.4-6.3-2.4-8.7 2 .1 4.2.1 6.2.1 7.2 0 8.4 0 8.2-2.3l-.2-24.5c-7.5 9.9-18.1 19.1-28.7 25.4-1.6-2.4-4.3-5.3-6.8-7.2 11-6 22.2-15.5 29.8-25.5h-26.2v-9h31.5l-.2-15.3 11.7.5c-.1.8-.6 1.4-2.1 1.6l.2 13.2h21v9zM103.6 72.8v-37.3l11.9.6c-.1.8-.8 1.4-2.2 1.6v35.2h-9.7zm45.1-40.6c-.1.8-.7 1.3-2.2 1.5v23.8c0 16.1-5.3 31.1-26.7 39.9-1.4-1.9-5-5.5-7.3-7.1 20.1-7.7 24.1-20.3 24.1-32.9v-25.9l12.1.7zM218.7 47.8c-.2.5-.5 1-1 1.2-1.1 23.1-3.3 36.6-6.2 41.3-3.9 6.1-9.6 6.1-12.2 6.1-3.5 0-7.8-.5-12.5-1.4.1-2.7-.3-7-.7-9.7 4.6 1.1 10.1 1.7 12 1.7 2.3 0 3.9-.6 5.1-3 1.7-3.4 3.5-14.6 4.1-29h-18.7c-3.6 15.5-9.7 30.1-23.7 41.5-1.7-1.7-5.4-4.4-7.8-5.9 12.6-9.7 18.5-22.6 21.4-35.7h-18.4v-9h20.2c.8-5.2.9-9.7 1.3-15.6l12.5 1.1c-.2.8-.9 1.4-2.3 1.7-.5 4.9-.7 8.4-1.4 12.9h19.5l1.8-.7 7 2.5zm-13.3-18.5c3.1 2.9 6.9 7.7 8.9 10.8l-4.6 3.3c-1.7-2.9-6-8.2-8.6-10.9l4.3-3.2zm12.1-3c3.1 2.8 7 7.4 9 10.5l-4.6 3.3c-1.7-2.8-5.9-8-8.6-10.6l4.2-3.2zM232.9 76.3c15.8 1.9 34.3 5.9 47.2 10.6l-4.3 9.7c-11.2-4.4-30.7-9.5-46.7-11.6l3.8-8.7zm5.5-44.8c12.8 1.3 30.4 4.7 40.4 8.4l-4 9.7c-10.8-4.3-26.8-7.5-39.7-9l3.3-9.1zm.2 22.6c11.4 1.1 27.1 4.6 36.3 7.8l-3.2 9.6c-8.5-3.5-24.2-7.1-36.3-8.4l3.2-9zM294 35.2c7.6 2.4 16.7 6.4 22.3 10l-5 8.7c-5.5-3.6-14.4-7.8-21.7-10.4l4.4-8.3zm-2.6 51.5c25.6-7.9 43.2-22.8 52.1-43.7 2.8 2.3 6.1 4.1 8.9 5.6-9.4 20.7-27.6 36.9-52.7 45.8-.2.8-.6 1.7-1.3 2l-7-9.7zM417.5 47.8c-.2.5-.5.9-.9 1.2-1.1 23.1-3.3 36.9-6.3 41.6-2.7 4.2-6.7 6.1-11.5 6.1-3.6 0-8.1-.5-13.2-1.5.1-2.6-.3-6.9-.7-9.6 4.6 1.1 10.1 1.7 12 1.7 2.3 0 3.9-.6 5.1-3 1.7-3.5 3.6-14.8 4.2-29.3h-18.7c-3.6 15.6-9.8 30.4-23.8 41.8-1.7-1.7-5.4-4.4-7.8-5.9 12.6-9.7 18.6-22.8 21.4-36h-18.5v-9h20.3c.8-5.2.9-9.5 1.2-15.4l12.5 1.1c-.2.8-.9 1.4-2.3 1.7-.5 4.8-.6 8.2-1.3 12.7h19.5l1.8-.8 7 2.6z"/></svg>
		  
		  <span>Origaminka</span>
		</div>
	</div>
	<div class="tab-content">{$HOOK_HOME_TAB_CONTENT}</div>
{/if}
