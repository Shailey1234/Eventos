<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Eventos</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="manifest" href="manifest.json">
<style>
html {
  box-sizing: border-box;
}

*,*:before,*:after {
  box-sizing: inherit;
}
html {
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}

body {
  margin: 0;
}

article,aside,details,figcaption,figure,footer,header,main,menu,nav,section,summary {
  display: block;
}

audio,canvas,progress,video {
  display: inline-block;
}

progress {
  vertical-align: baseline;
}

audio:not([controls]) {
  display: none;
  height: 0;
}

[hidden],template {
  display: none;
}

a {
  background-color: transparent;
  -webkit-text-decoration-skip: objects;
}

a:active,a:hover {
  outline-width: 0;
}

abbr[title] {
  border-bottom: none;
  text-decoration: underline;
  text-decoration: underline dotted;
}

dfn {
  font-style: italic;
}

mark {
  background: #ff0;
  color: #000;
}

small {
  font-size: 80%;
}

sub,sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}

sub {
  bottom: -0.25em;
}

sup {
  top: -0.5em;
}

figure {
  margin: 1em 40px;
}

img {
  border-style: none;
}

svg:not(:root) {
  overflow: hidden;
}

code,kbd,pre,samp {
  font-family: monospace,monospace;
  font-size: 1em;
}

hr {
  box-sizing: content-box;
  height: 0;
  overflow: visible;
}

button,input,select,textarea {
  font: inherit;
  margin: 0;
}

optgroup {
  font-weight: bold;
}

button,input {
  overflow: visible;
}

button,select {
  text-transform: none;
}

button,html [type=button],[type=reset],[type=submit] {
  -webkit-appearance: button;
}

button::-moz-focus-inner, [type=button]::-moz-focus-inner, [type=reset]::-moz-focus-inner, [type=submit]::-moz-focus-inner {
  border-style: none;
  padding: 0;
}

button:-moz-focusring, [type=button]:-moz-focusring, [type=reset]:-moz-focusring, [type=submit]:-moz-focusring {
  outline: 1px dotted ButtonText;
}

fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: .35em .625em .75em;
}

legend {
  color: inherit;
  display: table;
  max-width: 100%;
  padding: 0;
  white-space: normal;
}

textarea {
  overflow: auto;
}

[type=checkbox],[type=radio] {
  padding: 0;
}

[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button {
  height: auto;
}

[type=search] {
  -webkit-appearance: textfield;
  outline-offset: -2px;
}

[type=search]::-webkit-search-cancel-button,[type=search]::-webkit-search-decoration {
  -webkit-appearance: none;
}

::-webkit-input-placeholder {
  color: inherit;
  opacity: 0.54;
}

::-webkit-file-upload-button {
  -webkit-appearance: button;
  font: inherit;
}
/* End extract */
html,body {
  font-family: Verdana,sans-serif;
  font-size: 15px;
  line-height: 1.5;
}

html {
  overflow-x: hidden;
}

h1 {
  font-size: 36px;
}

h2 {
  font-size: 30px;
}

h3 {
  font-size: 24px;
}

h4 {
  font-size: 20px;
}

h5 {
  font-size: 18px;
}

h6 {
  font-size: 16px;
}

.w-serif {
  font-family: serif;
}

h1,h2,h3,h4,h5,h6 {
  font-family: "Segoe UI",Arial,sans-serif;
  font-weight: 400;
  margin: 10px 0;
}

.w-wide {
  letter-spacing: 4px;
}

hr {
  border: 0;
  border-top: 1px solid #eee;
  margin: 20px 0;
}

.w-image {
  max-width: 100%;
  height: auto;
}

img {
  vertical-align: middle;
}

a {
  color: inherit;
}

.w-table,.w-table-all {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  display: table;
}

.w-table-all {
  border: 1px solid #ccc;
}

.w-bordered tr,.w-table-all tr {
  border-bottom: 1px solid #ddd;
}

.w-striped tbody tr:nth-child(even) {
  background-color: #f1f1f1;
}

.w-table-all tr:nth-child(odd) {
  background-color: #fff;
}

.w-table-all tr:nth-child(even) {
  background-color: #f1f1f1;
}

.w-hoverable tbody tr:hover,.w-ul.w-hoverable li:hover {
  background-color: #ccc;
}

.w-centered tr th,.w-centered tr td {
  text-align: center;
}

.w-table td,.w-table th,.w-table-all td,.w-table-all th {
  padding: 8px 8px;
  display: table-cell;
  text-align: left;
  vertical-align: top;
}

.w-table th:first-child,.w-table td:first-child,.w-table-all th:first-child,.w-table-all td:first-child {
  padding-left: 16px;
}

.w-btn,.w-button {
  border: 1px solid white;
  display: inline-block;
  padding: 8px 16px;
  vertical-align: middle;
  overflow: hidden;
  text-decoration: none;
  color: inherit;
 
  text-align: center;
  cursor: pointer;
  white-space: nowrap;
}

.w-btn:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}

.w-btn,.w-button {
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.w-disabled,.w-btn:disabled,.w-button:disabled {
  cursor: not-allowed;
  opacity: 0.3;
}

.w-disabled *,:disabled * {
  pointer-events: none;
}

.w-btn.w-disabled:hover,.w-btn:disabled:hover {
  box-shadow: none;
}

.w-badge,.w-tag {
  background-color: #000;
  color: #fff;
  display: inline-block;
  padding-left: 8px;
  padding-right: 8px;
  text-align: center;
}

.w-badge {
  border-radius: 50%;
}

.w-ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.w-ul li {
  padding: 8px 16px;
  border-bottom: 1px solid #ddd;
}

.w-ul li:last-child {
  border-bottom: none;
}

.w-tooltip,.w-display-container {
  position: relative;
}

.w-tooltip .w-text {
  display: none;
}

.w-tooltip:hover .w-text {
  display: inline-block;
}

.w-ripple:active {
  opacity: 0.5;
}

.w-ripple {
  transition: opacity 0s;
}

.w-input {
  padding: 8px;
  display: block;
  border: none;
  border-bottom: 1px solid #ccc;
  width: 100%;
}

.w-select {
  padding: 9px 0;
  width: 100%;
  border: none;
  border-bottom: 1px solid #ccc;
}

.w-dropdown-click,.w-dropdown-hover {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

.w-dropdown-hover:hover .w-dropdown-content {
  display: block;
}

.w-dropdown-hover:first-child,.w-dropdown-click:hover {
  background-color: #ccc;
  color: #000;
}

.w-dropdown-hover:hover > .w-button:first-child,.w-dropdown-click:hover > .w-button:first-child {
  background-color: #ccc;
  color: #000;
}

.w-dropdown-content {
  cursor: auto;
  color: #000;
  background-color: #fff;
  display: none;
  position: absolute;
  min-width: 160px;
  margin: 0;
  padding: 0;
  z-index: 1;
}

.w-check,.w-radio {
  width: 24px;
  height: 24px;
  position: relative;
  top: 6px;
}

.w-sidebar {
  height: 100%;
  width: 200px;
  
  position: fixed!important;
  z-index: 1;
  overflow: auto;
}

.w-bar-block .w-dropdown-hover,.w-bar-block .w-dropdown-click {
  width: 100%;

}

.w-bar-block .w-dropdown-hover .w-dropdown-content,.w-bar-block .w-dropdown-click .w-dropdown-content {
  min-width: 100%;
}

.w-bar-block .w-dropdown-hover .w-button,.w-bar-block .w-dropdown-click .w-button {
  width: 100%;
  text-align: left;
  padding: 8px 16px;

}

.w-main,#main {
  transition: margin-left .4s;
  background-color: rgb(256,256,256);
}

.w-modal {
  z-index: 3;
  display: none;
  padding-top: 100px;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0,0.4);
}

.w-modal-content {
  margin: auto;
  background-color: #fff;
  position: relative;
  padding: 0;
  outline: 0;
  width: 600px;
}

.w-bar {
  width: 100%;
  overflow: hidden;
}

.w-center .w-bar {
  display: inline-block;
  width: auto;
}

.w-bar .w-bar-item {
  padding: 8px 16px;
  float: left;
  width: auto;
  border: none;
  display: block;
  outline: 0;
}

.w-bar .w-dropdown-hover,.w-bar .w-dropdown-click {
  position: static;
  float: left;
}

.w-bar .w-button {
  white-space: normal;
}

.w-bar-block .w-bar-item {
  width: 100%;
  display: block;
  padding: 8px 16px;
  text-align: left;
  border: none;
  white-space: normal;
  float: none;
  outline: 0;
}

.w-bar-block.w-center .w-bar-item {
  text-align: center;
}

.w-block {
  display: block;
  width: 100%;
}

.w-responsive {
  display: block;
  overflow-x: auto;
}

.w-container:after,.w-container:before,.w-panel:after,.w-panel:before,.w-row:after,.w-row:before,.w-row-padding:after,.w-row-padding:before,
.w-cell-row:before,.w-cell-row:after,.w-clear:after,.w-clear:before,.w-bar:before,.w-bar:after {
  content: "";
  display: table;
  clear: both;
}

.w-col,.w-half,.w-third,.w-twothird,.w-threequarter,.w-quarter {
  float: left;
  width: 100%;
}

.w-col.s1 {
  width: 8.33333%;
}

.w-col.s2 {
  width: 16.66666%;
}

.w-col.s3 {
  width: 24.99999%;
}

.w-col.s4 {
  width: 33.33333%;
}

.w-col.s5 {
  width: 41.66666%;
}

.w-col.s6 {
  width: 49.99999%;
}

.w-col.s7 {
  width: 58.33333%;
}

.w-col.s8 {
  width: 66.66666%;
}

.w-col.s9 {
  width: 74.99999%;
}

.w-col.s10 {
  width: 83.33333%;
}

.w-col.s11 {
  width: 91.66666%;
}

.w-col.s12 {
  width: 99.99999%;
}

@media (min-width:601px) {
  .w-col.m1 {
    width: 8.33333%;
  }

  .w-col.m2 {
    width: 16.66666%;
  }

  .w-col.m3,.w-quarter {
    width: 24.99999%;
  }

  .w-col.m4,.w-third {
    width: 33.33333%;
  }

  .w-col.m5 {
    width: 41.66666%;
  }

  .w-col.m6,.w-half {
    width: 49.99999%;
  }

  .w-col.m7 {
    width: 58.33333%;
  }

  .w-col.m8,.w-twothird {
    width: 66.66666%;
  }

  .w-col.m9,.w-threequarter {
    width: 74.99999%;
  }

  .w-col.m10 {
    width: 83.33333%;
  }

  .w-col.m11 {
    width: 91.66666%;
  }

  .w-col.m12 {
    width: 99.99999%;
  }
}

@media (min-width:993px) {
  .w-col.l1 {
    width: 8.33333%;
  }

  .w-col.l2 {
    width: 16.66666%;
  }

  .w-col.l3 {
    width: 24.99999%;
  }

  .w-col.l4 {
    width: 33.33333%;
  }

  .w-col.l5 {
    width: 41.66666%;
  }

  .w-col.l6 {
    width: 49.99999%;
  }

  .w-col.l7 {
    width: 58.33333%;
  }

  .w-col.l8 {
    width: 66.66666%;
  }

  .w-col.l9 {
    width: 74.99999%;
  }

  .w-col.l10 {
    width: 83.33333%;
  }

  .w-col.l11 {
    width: 91.66666%;
  }

  .w-col.l12 {
    width: 99.99999%;
  }
}

.w-content {
  max-width: 980px;
  margin: auto;
}

.w-rest {
  overflow: hidden;
}

.w-cell-row {
  display: table;
  width: 100%;
}

.w-cell {
  display: table-cell;
}

.w-cell-top {
  vertical-align: top;
}

.w-cell-middle {
  vertical-align: middle;
}

.w-cell-bottom {
  vertical-align: bottom;
}

.w-hide {
  display: none!important;
}

.w-show-block,.w-show {
  display: block!important;
}

.w-show-inline-block {
  display: inline-block!important;
}

@media (max-width:600px) {
  .w-modal-content {
    margin: 0 10px;
    width: auto!important;
  }

  .w-modal {
    padding-top: 30px;
  }

  .w-dropdown-hover.w-mobile .w-dropdown-content,.w-dropdown-click.w-mobile .w-dropdown-content {
    position: relative;
  }

  .w-hide-small {
    display: none!important;
  }

  .w-mobile {
    display: block;
    width: 100%!important;
  }

  .w-bar-item.w-mobile,.w-dropdown-hover.w-mobile,.w-dropdown-click.w-mobile {
    text-align: center;
  }

  .w-dropdown-hover.w-mobile,.w-dropdown-hover.w-mobile .w-btn,.w-dropdown-hover.w-mobile .w-button,.w-dropdown-click.w-mobile,.w-dropdown-click.w-mobile .w-btn,.w-dropdown-click.w-mobile .w-button {
    width: 100%;
  }
}

@media (max-width:768px) {
  .w-modal-content {
    width: 500px;
  }

  .w-modal {
    padding-top: 50px;
  }
}

@media (min-width:993px) {
  .w-modal-content {
    width: 900px;
  }

  .w-hide-large {
    display: none!important;
  }

  .w-sidebar.w-collapse {
    display: block!important;
  }
}

@media (max-width:992px) and (min-width:601px) {
  .w-hide-medium {
    display: none!important;
  }
}

@media (max-width:992px) {
  .w-sidebar.w-collapse {
    display: none;
  }

  .w-main {
    margin-left: 0!important;
    margin-right: 0!important;
  }
}

.w-top,.w-bottom {
  position: fixed;
  width: 100%;
  z-index: 1;
}

.w-top {
  top: 0;
}

.w-bottom {
  bottom: 0;
}

.w-overlay {
  position: fixed;
  display: none;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.5);
  z-index: 2;
}

.w-display-topleft {
  position: absolute;
  left: 0;
  top: 0;
}

.w-display-topright {
  position: absolute;
  right: 0;
  top: 0;
}

.w-display-bottomleft {
  position: absolute;
  left: 0;
  bottom: 0;
}

.w-display-bottomright {
  position: absolute;
  right: 0;
  bottom: 0;
}

.w-display-middle {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
}

.w-display-left {
  position: absolute;
  top: 50%;
  left: 0%;
  transform: translate(0%,-50%);
  -ms-transform: translate(-0%,-50%);
}

.w-display-right {
  position: absolute;
  top: 50%;
  right: 0%;
  transform: translate(0%,-50%);
  -ms-transform: translate(0%,-50%);
}

.w-display-topmiddle {
  position: absolute;
  left: 50%;
  top: 0;
  transform: translate(-50%,0%);
  -ms-transform: translate(-50%,0%);
}

.w-display-bottommiddle {
  position: absolute;
  left: 50%;
  bottom: 0;
  transform: translate(-50%,0%);
  -ms-transform: translate(-50%,0%);
}

.w-display-container:hover .w-display-hover {
  display: block;
}

.w-display-container:hover span.w-display-hover {
  display: inline-block;
}

.w-display-hover {
  display: none;
}

.w-display-position {
  position: absolute;
}

.w-circle {
  border-radius: 50%;
}

.w-round-small {
  border-radius: 2px;
}

.w-round,.w-round-medium {
  border-radius: 4px;
}

.w-round-large {
  border-radius: 8px;
}

.w-round-xlarge {
  border-radius: 16px;
}

.w-round-xxlarge {
  border-radius: 32px;
}

.w-row-padding,.w-row-padding>.w-half,.w-row-padding>.w-third,.w-row-padding>.w-twothird,.w-row-padding>.w-threequarter,.w-row-padding>.w-quarter,.w-row-padding>.w-col {
  padding: 0 8px;
}

.w-container,.w-panel {
  padding: 0.01em 16px;
}

.w-panel {
  margin-top: 16px;
  margin-bottom: 16px;
}

.w-code,.w-codespan {
  font-family: Consolas,"courier new";
  font-size: 16px;
}

.w-code {
  width: auto;
  background-color: #fff;
  padding: 8px 12px;
  border-left: 4px solid #4CAF50;
  word-wrap: break-word;
}

.w-codespan {
  color: crimson;
  background-color: #f1f1f1;
  padding-left: 4px;
  padding-right: 4px;
  font-size: 110%;
}

.w-card,.w-card-2 {
  box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
}

.w-card-4,.w-hover-shadow:hover {
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),0 4px 20px 0 rgba(0,0,0,0.19);
}

.w-spin {
  animation: w-spin 2s infinite linear;
}

@keyframes w-spin {
  0% {
    transform: rotate(0deg);
  }

  100% {
    transform: rotate(359deg);
  }
}

.w-animate-fading {
  animation: fading 10s infinite;
}

@keyframes fading {
  0% {
    opacity: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    opacity: 0;
  }
}

.w-animate-opacity {
  animation: opac 0.8s;
}

@keyframes opac {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}

.w-animate-top {
  position: relative;
  animation: animatetop 0.4s;
}

@keyframes animatetop {
  from {
    top: -300px;
    opacity: 0;
  }

  to {
    top: 0;
    opacity: 1;
  }
}

.w-animate-left {
  position: relative;
  animation: animateleft 0.4s;
}

@keyframes animateleft {
  from {
    left: -300px;
    opacity: 0;
  }

  to {
    left: 0;
    opacity: 1;
  }
}

.w-animate-right {
  position: relative;
  animation: animateright 0.4s;
}

@keyframes animateright {
  from {
    right: -300px;
    opacity: 0;
  }

  to {
    right: 0;
    opacity: 1;
  }
}

.w-animate-bottom {
  position: relative;
  animation: animatebottom 0.4s;
}

@keyframes animatebottom {
  from {
    bottom: -300px;
    opacity: 0;
  }

  to {
    bottom: 0;
    opacity: 1;
  }
}

.w-animate-zoom {
  animation: animatezoom 0.6s;
}

@keyframes animatezoom {
  from {
    transform: scale(0);
  }

  to {
    transform: scale(1);
  }
}

.w-animate-input {
  transition: width 0.4s ease-in-out;
}

.w-animate-input:focus {
  width: 100%!important;
}

.w-opacity,.w-hover-opacity:hover {
  opacity: 0.60;
}

.w-opacity-off,.w-hover-opacity-off:hover {
  opacity: 1;
}

.w-opacity-max {
  opacity: 0.25;
}

.w-opacity-min {
  opacity: 0.75;
}

.w-greyscale-max,.w-grayscale-max,.w-hover-greyscale:hover,.w-hover-grayscale:hover {
  filter: grayscale(100%);
}

.w-greyscale,.w-grayscale {
  filter: grayscale(75%);
}

.w-greyscale-min,.w-grayscale-min {
  filter: grayscale(50%);
}

.w-sepia {
  filter: sepia(75%);
}

.w-sepia-max,.w-hover-sepia:hover {
  filter: sepia(100%);
}

.w-sepia-min {
  filter: sepia(50%);
}

.w-tiny {
  font-size: 10px!important;
}

.w-small {
  font-size: 12px!important;
}

.w-medium {
  font-size: 15px!important;
}

.w-large {
  font-size: 18px!important;
}

.w-xlarge {
  font-size: 24px!important;
}

.w-xxlarge {
  font-size: 36px!important;
}

.w-xxxlarge {
  font-size: 48px!important;
}

.w-jumbo {
  font-size: 64px!important;
}

.w-left-align {
  text-align: left!important;
}

.w-right-align {
  text-align: right!important;
}

.w-justify {
  text-align: justify!important;
}

.w-center {
  text-align: center!important;
}

.w-border-0 {
  border: 0!important;
}

.w-border {
  border: 1px solid #ccc!important;
}

.w-border-top {
  border-top: 1px solid #ccc!important;
}

.w-border-bottom {
  border-bottom: 1px solid #ccc!important;
}

.w-border-left {
  border-left: 1px solid #ccc!important;
}

.w-border-right {
  border-right: 1px solid #ccc!important;
}

.w-topbar {
  border-top: 6px solid #ccc!important;
}

.w-bottombar {
  border-bottom: 6px solid #ccc!important;
}

.w-leftbar {
  border-left: 6px solid #ccc!important;
}

.w-rightbar {
  border-right: 6px solid #ccc!important;
}

.w-section,.w-code {
  margin-top: 16px!important;
  margin-bottom: 16px!important;
}

.w-margin {
  margin: 16px!important;
}

.w-margin-top {
  margin-top: 16px!important;
}

.w-margin-bottom {
  margin-bottom: 16px!important;
}

.w-margin-left {
  margin-left: 16px!important;
}

.w-margin-right {
  margin-right: 16px!important;
}

.w-padding-small {
  padding: 4px 8px!important;
}

.w-padding {
  padding: 8px 16px!important;
}

.w-padding-large {
  padding: 12px 24px!important;
}

.w-padding-16 {
  padding-top: 16px!important;
  padding-bottom: 16px!important;
}

.w-padding-24 {
  padding-top: 24px!important;
  padding-bottom: 24px!important;
}

.w-padding-32 {
  padding-top: 32px!important;
  padding-bottom: 32px!important;
}

.w-padding-48 {
  padding-top: 48px!important;
  padding-bottom: 48px!important;
}

.w-padding-64 {
  padding-top: 64px!important;
  padding-bottom: 64px!important;
}

.w-left {
  float: left!important;
}

.w-right {
  float: right!important;
}

.w-button:hover {
  color: #000!important;
  background-color: #ccc!important;
}

.w-transparent,.w-hover-none:hover {
  background-color: transparent!important;
}

.w-hover-none:hover {
  box-shadow: none!important;
}
/* Colors */
.w-amber,.w-hover-amber:hover {
  color: #000!important;
  background-color: #ffc107!important;
}

.w-aqua,.w-hover-aqua:hover {
  color: #000!important;
  background-color: #00ffff!important;
}

.w-blue,.w-hover-blue:hover {
  color: #fff!important;
  background-color: #2196F3!important;
}

.w-light-blue,.w-hover-light-blue:hover {
  color: #000!important;
  background-color: #87CEEB!important;
}

.w-brown,.w-hover-brown:hover {
  color: #fff!important;
  background-color: #795548!important;
}

.w-cyan,.w-hover-cyan:hover {
  color: #000!important;
  background-color: #00bcd4!important;
}

.w-blue-grey,.w-hover-blue-grey:hover,.w-blue-gray,.w-hover-blue-gray:hover {
  color: #fff!important;
  background-color: #607d8b!important;
}

.w-green,.w-hover-green:hover {
  color: #fff!important;
  background-color: #4CAF50!important;
}

.w-light-green,.w-hover-light-green:hover {
  color: #000!important;
  background-color: #8bc34a!important;
}

.w-indigo,.w-hover-indigo:hover {
  color: #fff!important;
  background-color: #3f51b5!important;
}

.w-khaki,.w-hover-khaki:hover {
  color: #000!important;
  background-color: #f0e68c!important;
}

.w-lime,.w-hover-lime:hover {
  color: #000!important;
  background-color: #cddc39!important;
}

.w-orange,.w-hover-orange:hover {
  color: #FFFFFF;
 
}

.w-deep-orange,.w-hover-deep-orange:hover {
  color: #fff!important;
  background-color: #ff5722!important;
}

.w-pink,.w-hover-pink:hover {
  color: #fff!important;
  background-color: #e91e63!important;
}

.w-purple,.w-hover-purple:hover {
  color: #fff!important;
  background-color: #9c27b0!important;
}

.w-deep-purple,.w-hover-deep-purple:hover {
  color: #fff!important;
  background-color: #673ab7!important;
}

.w-red,.w-hover-red:hover {
  color: #fff!important;
  background-color: #f44336!important;
}

.w-sand,.w-hover-sand:hover {
  color: #000!important;
  background-color: #fdf5e6!important;
}

.w-teal,.w-hover-teal:hover {
  color: #fff!important;
  background-color: #009688!important;
}

.w-yellow,.w-hover-yellow:hover {
  color: #000!important;
  background-color: #ffeb3b!important;
}

.w-white,.w-hover-white:hover {
  color: #000!important;
  background-color: #fff!important;
}

.w-black,.w-hover-black:hover {
  color: #fff!important;
  background-color: #000!important;
}

.w-grey,.w-hover-grey:hover,.w-gray,.w-hover-gray:hover {
  color: #000!important;
  background-color: #9e9e9e!important;
}

.w-light-grey,.w-hover-light-grey:hover,.w-light-gray,.w-hover-light-gray:hover {
  color: #000!important;
  background-color: #f1f1f1!important;
}

.w-dark-grey,.w-hover-dark-grey:hover,.w-dark-gray,.w-hover-dark-gray:hover {
  color: #fff!important;
  background-color: #616161!important;
}

.w-pale-red,.w-hover-pale-red:hover {
  color: #000!important;
  background-color: #ffdddd!important;
}

.w-pale-green,.w-hover-pale-green:hover {
  color: #000!important;
  background-color: #ddffdd!important;
}

.w-pale-yellow,.w-hover-pale-yellow:hover {
  color: #000!important;
  background-color: #ffffcc!important;
}

.w-pale-blue,.w-hover-pale-blue:hover {
  color: #000!important;
  background-color: #ddffff!important;
}

.w-text-amber,.w-hover-text-amber:hover {
  color: #ffc107!important;
}

.w-text-aqua,.w-hover-text-aqua:hover {
  color: #00ffff!important;
}

.w-text-blue,.w-hover-text-blue:hover {
  color: #2196F3!important;
}

.w-text-light-blue,.w-hover-text-light-blue:hover {
  color: #87CEEB!important;
}

.w-text-brown,.w-hover-text-brown:hover {
  color: #795548!important;
}

.w-text-cyan,.w-hover-text-cyan:hover {
  color: #00bcd4!important;
}

.w-text-blue-grey,.w-hover-text-blue-grey:hover,.w-text-blue-gray,.w-hover-text-blue-gray:hover {
  color: #607d8b!important;
}

.w-text-green,.w-hover-text-green:hover {
  color: #4CAF50!important;
}

.w-text-light-green,.w-hover-text-light-green:hover {
  color: #8bc34a!important;
}

.w-text-indigo,.w-hover-text-indigo:hover {
  color: #3f51b5!important;
}

.w-text-khaki,.w-hover-text-khaki:hover {
  color: #b4aa50!important;
}

.w-text-lime,.w-hover-text-lime:hover {
  color: #cddc39!important;
}

.w-text-orange,.w-hover-text-orange:hover {
  color: #ff9800!important;
}

.w-text-deep-orange,.w-hover-text-deep-orange:hover {
  color: #ff5722!important;
}

.w-text-pink,.w-hover-text-pink:hover {
  color: #e91e63!important;
}

.w-text-purple,.w-hover-text-purple:hover {
  color: #9c27b0!important;
}

.w-text-deep-purple,.w-hover-text-deep-purple:hover {
  color: #673ab7!important;
}

.w-text-red,.w-hover-text-red:hover {
  color: #f44336!important;
}

.w-text-sand,.w-hover-text-sand:hover {
  color: #fdf5e6!important;
}

.w-text-teal,.w-hover-text-teal:hover {
  color: #009688!important;
}

.w-text-yellow,.w-hover-text-yellow:hover {
  color: #d2be0e!important;
}

.w-text-white,.w-hover-text-white:hover {
  color: #fff!important;
}

.w-text-black,.w-hover-text-black:hover {
  color: #000!important;
}

.w-text-grey,.w-hover-text-grey:hover,.w-text-gray,.w-hover-text-gray:hover {
  color: #757575!important;
}

.w-text-light-grey,.w-hover-text-light-grey:hover,.w-text-light-gray,.w-hover-text-light-gray:hover {
  color: #f1f1f1!important;
}

.w-text-dark-grey,.w-hover-text-dark-grey:hover,.w-text-dark-gray,.w-hover-text-dark-gray:hover {
  color: #3a3a3a!important;
}

.w-border-amber,.w-hover-border-amber:hover {
  border-color: #ffc107!important;
}

.w-border-aqua,.w-hover-border-aqua:hover {
  border-color: #00ffff!important;
}

.w-border-blue,.w-hover-border-blue:hover {
  border-color: #2196F3!important;
}

.w-border-light-blue,.w-hover-border-light-blue:hover {
  border-color: #87CEEB!important;
}

.w-border-brown,.w-hover-border-brown:hover {
  border-color: #795548!important;
}

.w-border-cyan,.w-hover-border-cyan:hover {
  border-color: #00bcd4!important;
}

.w-border-blue-grey,.w-hover-border-blue-grey:hover,.w-border-blue-gray,.w-hover-border-blue-gray:hover {
  border-color: #607d8b!important;
}

.w-border-green,.w-hover-border-green:hover {
  border-color: #4CAF50!important;
}

.w-border-light-green,.w-hover-border-light-green:hover {
  border-color: #8bc34a!important;
}

.w-border-indigo,.w-hover-border-indigo:hover {
  border-color: #3f51b5!important;
}

.w-border-khaki,.w-hover-border-khaki:hover {
  border-color: #f0e68c!important;
}

.w-border-lime,.w-hover-border-lime:hover {
  border-color: #cddc39!important;
}

.w-border-orange,.w-hover-border-orange:hover {
  border-color: #ff9800!important;
}

.w-border-deep-orange,.w-hover-border-deep-orange:hover {
  border-color: #ff5722!important;
}

.w-border-pink,.w-hover-border-pink:hover {
  border-color: #e91e63!important;
}

.w-border-purple,.w-hover-border-purple:hover {
  border-color: #9c27b0!important;
}

.w-border-deep-purple,.w-hover-border-deep-purple:hover {
  border-color: #673ab7!important;
}

.w-border-red,.w-hover-border-red:hover {
  border-color: #f44336!important;
}

.w-border-sand,.w-hover-border-sand:hover {
  border-color: #fdf5e6!important;
}

.w-border-teal,.w-hover-border-teal:hover {
  border-color: #009688!important;
}

.w-border-yellow,.w-hover-border-yellow:hover {
  border-color: #ffeb3b!important;
}

.w-border-white,.w-hover-border-white:hover {
  border-color: #fff!important;
}

.w-border-black,.w-hover-border-black:hover {
  border-color: #000!important;
}

.w-border-grey,.w-hover-border-grey:hover,.w-border-gray,.w-hover-border-gray:hover {
  border-color: #9e9e9e!important;
}

.w-border-light-grey,.w-hover-border-light-grey:hover,.w-border-light-gray,.w-hover-border-light-gray:hover {
  border-color: #f1f1f1!important;
}

.w-border-dark-grey,.w-hover-border-dark-grey:hover,.w-border-dark-gray,.w-hover-border-dark-gray:hover {
  border-color: #616161!important;
}

.w-border-pale-red,.w-hover-border-pale-red:hover {
  border-color: #ffe7e7!important;
}

.w-border-pale-green,.w-hover-border-pale-green:hover {
  border-color: #e7ffe7!important;
}

.w-border-pale-yellow,.w-hover-border-pale-yellow:hover {
  border-color: #ffffcc!important;
}

.w-border-pale-blue,.w-hover-border-pale-blue:hover {
  border-color: #e7ffff!important;
}
body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
body {font-size:16px;}
.w-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w-half img:hover{opacity:1}
.bgi {
    /* The image used */
    background-image: url("images/f2.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the ima nicely */
    background-position: center;
    
    background-size: cover;
}
.bgio {
    /* The image used */
    background-image: url("images/bg3.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat:repeat;
    background-size: cover;
}
p {
  text-align: center;
  font-size: 20px;
  margin-top:0px;
  font-weight: bold;
  font-style: italic;
}
</style>
<body background="images\f2.jpg" width="100%" height="100%">

<!-- Sidebar/menu -->
<nav class="w-sidebar w-orange w-collapse w-top w-large w-padding bgi" style="z-index:3;width:300px;font-weight:bold; " id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w_close()" class="w-button w-hide-large w-display-topleft w-red" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w-container">
    <h3 class="w-padding-60"><img src="images\eventos-logo1-Recovered.png" style="width:100%"></h3>
  </div>
  <div class="w-bar-block" >
    <a href="Eventos.jsp" onclick="w_close()" class="w-bar-item w-button w-hover-white">Home</a> 
    <a href="#Event" onclick="w_close()" class="w-bar-item w-button w-hover-white">Event</a> 
    <a href="#Schedule" onclick="w_close()" class="w-bar-item w-button w-hover-white">Schedule</a> 
    <a href="#Rounds" onclick="w_close()" class="w-bar-item w-button w-hover-white">Rounds</a>  
    <a href="#Award" onclick="w_close()" class="w-bar-item w-button w-hover-white">Award</a>
    <a href="schedule.jsp" onclick="w_close()" class="w-bar-item w-button w-hover-white">Back</a>   
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w-container w-top w-hide-large w-orange w-xlarge w-padding ">
  <a href="javascript:void(0)" class="w-button w-orange w-margin-right" onclick="w_open()">☰</a>
     <img src="images\eventos-logo1-r3.png">
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w-overlay w-hide-large" onclick="w_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class=" w-main bgi" style="margin-left:300px;margin-right:0px">
    <%
        
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","vasant.1");
            PreparedStatement pst = con.prepareStatement("select * from event where id=?");
            pst.setInt(1,Integer.parseInt(request.getParameter("id")));
            PreparedStatement ps = con.prepareStatement("select * from about where id=?");
            ps.setInt(1,Integer.parseInt(request.getParameter("id")));
            ResultSet rs = pst.executeQuery();
            ResultSet r = ps.executeQuery();
           PreparedStatement psk = con.prepareStatement("select url from picture where id=?");
           psk.setInt(1,Integer.parseInt(request.getParameter("id")));
            ResultSet rj = psk.executeQuery();  
            rs.next();r.next();rj.next();
    %>
  <!-- Header -->
  <div class="w-container" style="margin-top:0px"id="home">
  <h1 class="w-xxlarge" style="color:red;"><b><center>Welcome to Eventos</center></b></h1>
  
  <br>
 <br>
  <!-- Highlights -->
  <div class="w-container " id="Event" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>About Event</b></h1>
    
    <div class="w-row-padding">
    <div class="w-half">
        <img src="<%=rj.getString("url")%>"  style ="box-shadow: 15px 15px;">
        <br>
        <br>
        <p><font size="4" style="color:white;"><b><i>
                    <%=r.getString("Summary") %></font>
        </i></b></p>
 </div>
  </div>
 </div>
 </div>
        <br>
        <br>
   <div class="w-container" style="margin-top:0px"id="Schedule">
  
  <h1 class="w-xxxlarge" style="color:white"><b>Schedule</b></h1>
  
    
    <div class="w-row-padding">
    <div class="w-half">
        
        
        <br>
        <p><font size="4" style="color:white;"><b><i>
                    Start Date : <%=rs.getString("Startdate") %><br>
                    Time       : <%=rs.getString("Time") %><br>
                    Venue : <%=rs.getString("Startdate") %><br>
                   <br><br>
                   </font>
        </i></b></p>
 </div>
  </div>
 </div>
 </div>
</div>
<!-- w.CSS Container -->
<div class="w-container" style="margin-top:0px; margin-left: 40%"id="Rounds">
  
    <h1 class="w-xxxlarge" style="color:white"><b>Rounds</b></h1>
  
    
    <div class="w-row-padding">
    <div class="w-half">
        
        
        <br>
        <p style="text-align: right;"><font size="4" style="color:white;"><b><i>
                    Round 1 : <%=r.getString("Round1") %><br>
                    Round 2 : <%=r.getString("Round2") %><br>
                    Round 3 : <%=r.getString("Final") %><br>
                    <br><br>
                   
        </i></b></font></p>
 </div>
  </div>
 </div>
<div class="w-container" style="margin-top:0px; margin-left:40%"id="Award">
  
    <h1 class="w-xxxlarge" style="color:white"><b>Award</b></h1>
  
    
    <div class="w-row-padding">
    <div class="w-half">
        
        
        <br>
        <p><font size="4" style="color:white;"><b><i>
                   Rs.<%=r.getString("Award")%> cash prize for winner 
                    
                   <br><br>
                   </font>
        </i></b></p>
 </div>
  </div>
</div>
<script>
// Script to open and close sidebar
function w_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

</script>
<script src="promise.js"></script>
<script src="fetch.js"></script>
<script src="register.js"></script>
</body>
</html>
