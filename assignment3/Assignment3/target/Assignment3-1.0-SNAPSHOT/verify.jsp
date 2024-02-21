<%--
  Created by IntelliJ IDEA.
  User: kevin
  Date: 2/17/24
  Time: 11:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /*
! tailwindcss v3.3.5 | MIT License | https://tailwindcss.com
*/

        /*
        1. Prevent padding and border from affecting element width. (https://github.com/mozdevs/cssremedy/issues/4)
        2. Allow adding a border to an element by just adding a border-width. (https://github.com/tailwindcss/tailwindcss/pull/116)
        */

        *,
        ::before,
        ::after {
            box-sizing: border-box;
            /* 1 */
            border-width: 0;
            /* 2 */
            border-style: solid;
            /* 2 */
            border-color: #e5e7eb;
            /* 2 */
        }

        ::before,
        ::after {
            --tw-content: '';
        }

        /*
        1. Use a consistent sensible line-height in all browsers.
        2. Prevent adjustments of font size after orientation changes in iOS.
        3. Use a more readable tab size.
        4. Use the user's configured `sans` font-family by default.
        5. Use the user's configured `sans` font-feature-settings by default.
        6. Use the user's configured `sans` font-variation-settings by default.
        */

        html {
            line-height: 1.5;
            /* 1 */
            -webkit-text-size-adjust: 100%;
            /* 2 */
            -moz-tab-size: 4;
            /* 3 */
            -o-tab-size: 4;
            tab-size: 4;
            /* 3 */
            font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
            /* 4 */
            font-feature-settings: normal;
            /* 5 */
            font-variation-settings: normal;
            /* 6 */
        }

        /*
        1. Remove the margin in all browsers.
        2. Inherit line-height from `html` so users can set them as a class directly on the `html` element.
        */

        body {
            margin: 0;
            /* 1 */
            line-height: inherit;
            /* 2 */
        }

        /*
        1. Add the correct height in Firefox.
        2. Correct the inheritance of border color in Firefox. (https://bugzilla.mozilla.org/show_bug.cgi?id=190655)
        3. Ensure horizontal rules are visible by default.
        */

        hr {
            height: 0;
            /* 1 */
            color: inherit;
            /* 2 */
            border-top-width: 1px;
            /* 3 */
        }

        /*
        Add the correct text decoration in Chrome, Edge, and Safari.
        */

        abbr:where([title]) {
            -webkit-text-decoration: underline dotted;
            text-decoration: underline dotted;
        }

        /*
        Remove the default font size and weight for headings.
        */

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-size: inherit;
            font-weight: inherit;
        }

        /*
        Reset links to optimize for opt-in styling instead of opt-out.
        */

        a {
            color: inherit;
            text-decoration: inherit;
        }

        /*
        Add the correct font weight in Edge and Safari.
        */

        b,
        strong {
            font-weight: bolder;
        }

        /*
        1. Use the user's configured `mono` font family by default.
        2. Correct the odd `em` font sizing in all browsers.
        */

        code,
        kbd,
        samp,
        pre {
            font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
            /* 1 */
            font-size: 1em;
            /* 2 */
        }

        /*
        Add the correct font size in all browsers.
        */

        small {
            font-size: 80%;
        }

        /*
        Prevent `sub` and `sup` elements from affecting the line height in all browsers.
        */

        sub,
        sup {
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

        /*
        1. Remove text indentation from table contents in Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=999088, https://bugs.webkit.org/show_bug.cgi?id=201297)
        2. Correct table border color inheritance in all Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=935729, https://bugs.webkit.org/show_bug.cgi?id=195016)
        3. Remove gaps between table borders by default.
        */

        table {
            text-indent: 0;
            /* 1 */
            border-color: inherit;
            /* 2 */
            border-collapse: collapse;
            /* 3 */
        }

        /*
        1. Change the font styles in all browsers.
        2. Remove the margin in Firefox and Safari.
        3. Remove default padding in all browsers.
        */

        button,
        input,
        optgroup,
        select,
        textarea {
            font-family: inherit;
            /* 1 */
            font-feature-settings: inherit;
            /* 1 */
            font-variation-settings: inherit;
            /* 1 */
            font-size: 100%;
            /* 1 */
            font-weight: inherit;
            /* 1 */
            line-height: inherit;
            /* 1 */
            color: inherit;
            /* 1 */
            margin: 0;
            /* 2 */
            padding: 0;
            /* 3 */
        }

        /*
        Remove the inheritance of text transform in Edge and Firefox.
        */

        button,
        select {
            text-transform: none;
        }

        /*
        1. Correct the inability to style clickable types in iOS and Safari.
        2. Remove default button styles.
        */

        button,
        [type='button'],
        [type='reset'],
        [type='submit'] {
            -webkit-appearance: button;
            /* 1 */
            background-color: transparent;
            /* 2 */
            background-image: none;
            /* 2 */
        }

        /*
        Use the modern Firefox focus style for all focusable elements.
        */

        :-moz-focusring {
            outline: auto;
        }

        /*
        Remove the additional `:invalid` styles in Firefox. (https://github.com/mozilla/gecko-dev/blob/2f9eacd9d3d995c937b4251a5557d95d494c9be1/layout/style/res/forms.css#L728-L737)
        */

        :-moz-ui-invalid {
            box-shadow: none;
        }

        /*
        Add the correct vertical alignment in Chrome and Firefox.
        */

        progress {
            vertical-align: baseline;
        }

        /*
        Correct the cursor style of increment and decrement buttons in Safari.
        */

        ::-webkit-inner-spin-button,
        ::-webkit-outer-spin-button {
            height: auto;
        }

        /*
        1. Correct the odd appearance in Chrome and Safari.
        2. Correct the outline style in Safari.
        */

        [type='search'] {
            -webkit-appearance: textfield;
            /* 1 */
            outline-offset: -2px;
            /* 2 */
        }

        /*
        Remove the inner padding in Chrome and Safari on macOS.
        */

        ::-webkit-search-decoration {
            -webkit-appearance: none;
        }

        /*
        1. Correct the inability to style clickable types in iOS and Safari.
        2. Change font properties to `inherit` in Safari.
        */

        ::-webkit-file-upload-button {
            -webkit-appearance: button;
            /* 1 */
            font: inherit;
            /* 2 */
        }

        /*
        Add the correct display in Chrome and Safari.
        */

        summary {
            display: list-item;
        }

        /*
        Removes the default spacing and border for appropriate elements.
        */

        blockquote,
        dl,
        dd,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        hr,
        figure,
        p,
        pre {
            margin: 0;
        }

        fieldset {
            margin: 0;
            padding: 0;
        }

        legend {
            padding: 0;
        }

        ol,
        ul,
        menu {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        /*
        Reset default styling for dialogs.
        */

        dialog {
            padding: 0;
        }

        /*
        Prevent resizing textareas horizontally by default.
        */

        textarea {
            resize: vertical;
        }

        /*
        1. Reset the default placeholder opacity in Firefox. (https://github.com/tailwindlabs/tailwindcss/issues/3300)
        2. Set the default placeholder color to the user's configured gray 400 color.
        */

        input::-moz-placeholder, textarea::-moz-placeholder {
            opacity: 1;
            /* 1 */
            color: #9ca3af;
            /* 2 */
        }

        input::placeholder,
        textarea::placeholder {
            opacity: 1;
            /* 1 */
            color: #9ca3af;
            /* 2 */
        }

        /*
        Set the default cursor for buttons.
        */

        button,
        [role="button"] {
            cursor: pointer;
        }

        /*
        Make sure disabled buttons don't get the pointer cursor.
        */

        :disabled {
            cursor: default;
        }

        /*
        1. Make replaced elements `display: block` by default. (https://github.com/mozdevs/cssremedy/issues/14)
        2. Add `vertical-align: middle` to align replaced elements more sensibly by default. (https://github.com/jensimmons/cssremedy/issues/14#issuecomment-634934210)
           This can trigger a poorly considered lint error in some tools but is included by design.
        */

        img,
        svg,
        video,
        canvas,
        audio,
        iframe,
        embed,
        object {
            display: block;
            /* 1 */
            vertical-align: middle;
            /* 2 */
        }

        /*
        Constrain images and videos to the parent width and preserve their intrinsic aspect ratio. (https://github.com/mozdevs/cssremedy/issues/14)
        */

        img,
        video {
            max-width: 100%;
            height: auto;
        }

        /* Make elements with the HTML hidden attribute stay hidden by default */

        [hidden] {
            display: none;
        }

        [type='text'],input:where(:not([type])),[type='email'],[type='url'],[type='password'],[type='number'],[type='date'],[type='datetime-local'],[type='month'],[type='search'],[type='tel'],[type='time'],[type='week'],[multiple],textarea,select {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: #fff;
            border-color: #6b7280;
            border-width: 1px;
            border-radius: 0px;
            padding-top: 0.5rem;
            padding-right: 0.75rem;
            padding-bottom: 0.5rem;
            padding-left: 0.75rem;
            font-size: 1rem;
            line-height: 1.5rem;
            --tw-shadow: 0 0 #0000;
        }

        [type='text']:focus, input:where(:not([type])):focus, [type='email']:focus, [type='url']:focus, [type='password']:focus, [type='number']:focus, [type='date']:focus, [type='datetime-local']:focus, [type='month']:focus, [type='search']:focus, [type='tel']:focus, [type='time']:focus, [type='week']:focus, [multiple]:focus, textarea:focus, select:focus {
            outline: 2px solid transparent;
            outline-offset: 2px;
            --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
            --tw-ring-offset-width: 0px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: #2563eb;
            --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
            --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
            box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
            border-color: #2563eb;
        }

        input::-moz-placeholder, textarea::-moz-placeholder {
            color: #6b7280;
            opacity: 1;
        }

        input::placeholder,textarea::placeholder {
            color: #6b7280;
            opacity: 1;
        }

        ::-webkit-datetime-edit-fields-wrapper {
            padding: 0;
        }

        ::-webkit-date-and-time-value {
            min-height: 1.5em;
            text-align: inherit;
        }

        ::-webkit-datetime-edit {
            display: inline-flex;
        }

        ::-webkit-datetime-edit,::-webkit-datetime-edit-year-field,::-webkit-datetime-edit-month-field,::-webkit-datetime-edit-day-field,::-webkit-datetime-edit-hour-field,::-webkit-datetime-edit-minute-field,::-webkit-datetime-edit-second-field,::-webkit-datetime-edit-millisecond-field,::-webkit-datetime-edit-meridiem-field {
            padding-top: 0;
            padding-bottom: 0;
        }

        select {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
            background-position: right 0.5rem center;
            background-repeat: no-repeat;
            background-size: 1.5em 1.5em;
            padding-right: 2.5rem;
            -webkit-print-color-adjust: exact;
            print-color-adjust: exact;
        }

        [multiple],[size]:where(select:not([size="1"])) {
            background-image: initial;
            background-position: initial;
            background-repeat: unset;
            background-size: initial;
            padding-right: 0.75rem;
            -webkit-print-color-adjust: unset;
            print-color-adjust: unset;
        }

        [type='checkbox'],[type='radio'] {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            padding: 0;
            -webkit-print-color-adjust: exact;
            print-color-adjust: exact;
            display: inline-block;
            vertical-align: middle;
            background-origin: border-box;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
            flex-shrink: 0;
            height: 1rem;
            width: 1rem;
            color: #2563eb;
            background-color: #fff;
            border-color: #6b7280;
            border-width: 1px;
            --tw-shadow: 0 0 #0000;
        }

        [type='checkbox'] {
            border-radius: 0px;
        }

        [type='radio'] {
            border-radius: 100%;
        }

        [type='checkbox']:focus,[type='radio']:focus {
            outline: 2px solid transparent;
            outline-offset: 2px;
            --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
            --tw-ring-offset-width: 2px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: #2563eb;
            --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
            --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
            box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
        }

        [type='checkbox']:checked,[type='radio']:checked {
            border-color: transparent;
            background-color: currentColor;
            background-size: 100% 100%;
            background-position: center;
            background-repeat: no-repeat;
        }

        [type='checkbox']:checked {
            background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
        }

        @media (forced-colors: active)  {
            [type='checkbox']:checked {
                -webkit-appearance: auto;
                -moz-appearance: auto;
                appearance: auto;
            }
        }

        [type='radio']:checked {
            background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e");
        }

        @media (forced-colors: active)  {
            [type='radio']:checked {
                -webkit-appearance: auto;
                -moz-appearance: auto;
                appearance: auto;
            }
        }

        [type='checkbox']:checked:hover,[type='checkbox']:checked:focus,[type='radio']:checked:hover,[type='radio']:checked:focus {
            border-color: transparent;
            background-color: currentColor;
        }

        [type='checkbox']:indeterminate {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e");
            border-color: transparent;
            background-color: currentColor;
            background-size: 100% 100%;
            background-position: center;
            background-repeat: no-repeat;
        }

        @media (forced-colors: active)  {
            [type='checkbox']:indeterminate {
                -webkit-appearance: auto;
                -moz-appearance: auto;
                appearance: auto;
            }
        }

        [type='checkbox']:indeterminate:hover,[type='checkbox']:indeterminate:focus {
            border-color: transparent;
            background-color: currentColor;
        }

        [type='file'] {
            background: unset;
            border-color: inherit;
            border-width: 0;
            border-radius: 0;
            padding: 0;
            font-size: unset;
            line-height: inherit;
        }

        [type='file']:focus {
            outline: 1px solid ButtonText;
            outline: 1px auto -webkit-focus-ring-color;
        }

        *, ::before, ::after {
            --tw-border-spacing-x: 0;
            --tw-border-spacing-y: 0;
            --tw-translate-x: 0;
            --tw-translate-y: 0;
            --tw-rotate: 0;
            --tw-skew-x: 0;
            --tw-skew-y: 0;
            --tw-scale-x: 1;
            --tw-scale-y: 1;
            --tw-pan-x:  ;
            --tw-pan-y:  ;
            --tw-pinch-zoom:  ;
            --tw-scroll-snap-strictness: proximity;
            --tw-gradient-from-position:  ;
            --tw-gradient-via-position:  ;
            --tw-gradient-to-position:  ;
            --tw-ordinal:  ;
            --tw-slashed-zero:  ;
            --tw-numeric-figure:  ;
            --tw-numeric-spacing:  ;
            --tw-numeric-fraction:  ;
            --tw-ring-inset:  ;
            --tw-ring-offset-width: 0px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: rgb(59 130 246 / 0.5);
            --tw-ring-offset-shadow: 0 0 #0000;
            --tw-ring-shadow: 0 0 #0000;
            --tw-shadow: 0 0 #0000;
            --tw-shadow-colored: 0 0 #0000;
            --tw-blur:  ;
            --tw-brightness:  ;
            --tw-contrast:  ;
            --tw-grayscale:  ;
            --tw-hue-rotate:  ;
            --tw-invert:  ;
            --tw-saturate:  ;
            --tw-sepia:  ;
            --tw-drop-shadow:  ;
            --tw-backdrop-blur:  ;
            --tw-backdrop-brightness:  ;
            --tw-backdrop-contrast:  ;
            --tw-backdrop-grayscale:  ;
            --tw-backdrop-hue-rotate:  ;
            --tw-backdrop-invert:  ;
            --tw-backdrop-opacity:  ;
            --tw-backdrop-saturate:  ;
            --tw-backdrop-sepia:  ;
        }

        ::backdrop {
            --tw-border-spacing-x: 0;
            --tw-border-spacing-y: 0;
            --tw-translate-x: 0;
            --tw-translate-y: 0;
            --tw-rotate: 0;
            --tw-skew-x: 0;
            --tw-skew-y: 0;
            --tw-scale-x: 1;
            --tw-scale-y: 1;
            --tw-pan-x:  ;
            --tw-pan-y:  ;
            --tw-pinch-zoom:  ;
            --tw-scroll-snap-strictness: proximity;
            --tw-gradient-from-position:  ;
            --tw-gradient-via-position:  ;
            --tw-gradient-to-position:  ;
            --tw-ordinal:  ;
            --tw-slashed-zero:  ;
            --tw-numeric-figure:  ;
            --tw-numeric-spacing:  ;
            --tw-numeric-fraction:  ;
            --tw-ring-inset:  ;
            --tw-ring-offset-width: 0px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: rgb(59 130 246 / 0.5);
            --tw-ring-offset-shadow: 0 0 #0000;
            --tw-ring-shadow: 0 0 #0000;
            --tw-shadow: 0 0 #0000;
            --tw-shadow-colored: 0 0 #0000;
            --tw-blur:  ;
            --tw-brightness:  ;
            --tw-contrast:  ;
            --tw-grayscale:  ;
            --tw-hue-rotate:  ;
            --tw-invert:  ;
            --tw-saturate:  ;
            --tw-sepia:  ;
            --tw-drop-shadow:  ;
            --tw-backdrop-blur:  ;
            --tw-backdrop-brightness:  ;
            --tw-backdrop-contrast:  ;
            --tw-backdrop-grayscale:  ;
            --tw-backdrop-hue-rotate:  ;
            --tw-backdrop-invert:  ;
            --tw-backdrop-opacity:  ;
            --tw-backdrop-saturate:  ;
            --tw-backdrop-sepia:  ;
        }

        .absolute {
            position: absolute;
        }

        .relative {
            position: relative;
        }

        .inset-y-0 {
            top: 0px;
            bottom: 0px;
        }

        .left-0 {
            left: 0px;
        }

        .right-0 {
            right: 0px;
        }

        .mx-auto {
            margin-left: auto;
            margin-right: auto;
        }

        .mt-1 {
            margin-top: 0.25rem;
        }

        .mt-2 {
            margin-top: 0.5rem;
        }

        .mt-6 {
            margin-top: 1.5rem;
        }

        .mt-3 {
            margin-top: 0.75rem;
        }

        .block {
            display: block;
        }

        .flex {
            display: flex;
        }

        .h-10 {
            height: 2.5rem;
        }

        .h-12 {
            height: 3rem;
        }

        .h-4 {
            height: 1rem;
        }

        .h-5 {
            height: 1.25rem;
        }

        .h-6 {
            height: 1.5rem;
        }

        .min-h-screen {
            min-height: 100vh;
        }

        .w-4 {
            width: 1rem;
        }

        .w-5 {
            width: 1.25rem;
        }

        .w-full {
            width: 100%;
        }

        .w-6 {
            width: 1.5rem;
        }

        .max-w-md {
            max-width: 28rem;
        }

        .flex-col {
            flex-direction: column;
        }

        .items-center {
            align-items: center;
        }

        .justify-center {
            justify-content: center;
        }

        .justify-between {
            justify-content: space-between;
        }

        .gap-2 {
            gap: 0.5rem;
        }

        .gap-3 {
            gap: 0.75rem;
        }

        .space-y-6 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(1.5rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(1.5rem * var(--tw-space-y-reverse));
        }

        .space-y-5 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(1.25rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(1.25rem * var(--tw-space-y-reverse));
        }

        .space-y-1 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(0.25rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(0.25rem * var(--tw-space-y-reverse));
        }

        .rounded {
            border-radius: 0.25rem;
        }

        .rounded-md {
            border-radius: 0.375rem;
        }

        .rounded-xl {
            border-radius: 0.75rem;
        }

        .border {
            border-width: 1px;
        }

        .border-gray-300 {
            --tw-border-opacity: 1;
            border-color: rgb(209 213 219 / var(--tw-border-opacity));
        }

        .border-red-300 {
            --tw-border-opacity: 1;
            border-color: rgb(252 165 165 / var(--tw-border-opacity));
        }

        .border-yellow-500 {
            --tw-border-opacity: 1;
            border-color: rgb(234 179 8 / var(--tw-border-opacity));
        }

        .bg-blue-600 {
            --tw-bg-opacity: 1;
            background-color: rgb(37 99 235 / var(--tw-bg-opacity));
        }

        .bg-gray-50 {
            --tw-bg-opacity: 1;
            background-color: rgb(249 250 251 / var(--tw-bg-opacity));
        }

        .bg-white\/80 {
            background-color: rgb(255 255 255 / 0.8);
        }

        .bg-gray-600 {
            --tw-bg-opacity: 1;
            background-color: rgb(75 85 99 / var(--tw-bg-opacity));
        }

        .bg-gray-200 {
            --tw-bg-opacity: 1;
            background-color: rgb(229 231 235 / var(--tw-bg-opacity));
        }

        .bg-yellow-50 {
            --tw-bg-opacity: 1;
            background-color: rgb(254 252 232 / var(--tw-bg-opacity));
        }

        .bg-\[url\(\'img\/wave\.svg\'\)\] {
            background-image: url('img/wave.svg');
        }

        .bg-fixed {
            background-attachment: fixed;
        }

        .bg-bottom {
            background-position: bottom;
        }

        .bg-no-repeat {
            background-repeat: no-repeat;
        }

        .p-6 {
            padding: 1.5rem;
        }

        .p-4 {
            padding: 1rem;
        }

        .px-4 {
            padding-left: 1rem;
            padding-right: 1rem;
        }

        .py-2 {
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
        }

        .pb-12 {
            padding-bottom: 3rem;
        }

        .pl-10 {
            padding-left: 2.5rem;
        }

        .pl-3 {
            padding-left: 0.75rem;
        }

        .pr-10 {
            padding-right: 2.5rem;
        }

        .pr-3 {
            padding-right: 0.75rem;
        }

        .text-2xl {
            font-size: 1.5rem;
            line-height: 2rem;
        }

        .text-sm {
            font-size: 0.875rem;
            line-height: 1.25rem;
        }

        .text-xl {
            font-size: 1.25rem;
            line-height: 1.75rem;
        }

        .font-black {
            font-weight: 900;
        }

        .font-bold {
            font-weight: 700;
        }

        .font-medium {
            font-weight: 500;
        }

        .font-semibold {
            font-weight: 600;
        }

        .text-blue-600 {
            --tw-text-opacity: 1;
            color: rgb(37 99 235 / var(--tw-text-opacity));
        }

        .text-gray-400 {
            --tw-text-opacity: 1;
            color: rgb(156 163 175 / var(--tw-text-opacity));
        }

        .text-gray-700 {
            --tw-text-opacity: 1;
            color: rgb(55 65 81 / var(--tw-text-opacity));
        }

        .text-gray-900 {
            --tw-text-opacity: 1;
            color: rgb(17 24 39 / var(--tw-text-opacity));
        }

        .text-red-400 {
            --tw-text-opacity: 1;
            color: rgb(248 113 113 / var(--tw-text-opacity));
        }

        .text-red-500 {
            --tw-text-opacity: 1;
            color: rgb(239 68 68 / var(--tw-text-opacity));
        }

        .text-red-600 {
            --tw-text-opacity: 1;
            color: rgb(220 38 38 / var(--tw-text-opacity));
        }

        .text-red-900 {
            --tw-text-opacity: 1;
            color: rgb(127 29 29 / var(--tw-text-opacity));
        }

        .text-white {
            --tw-text-opacity: 1;
            color: rgb(255 255 255 / var(--tw-text-opacity));
        }

        .text-yellow-400 {
            --tw-text-opacity: 1;
            color: rgb(250 204 21 / var(--tw-text-opacity));
        }

        .text-yellow-800 {
            --tw-text-opacity: 1;
            color: rgb(133 77 14 / var(--tw-text-opacity));
        }

        .placeholder-red-300::-moz-placeholder {
            --tw-placeholder-opacity: 1;
            color: rgb(252 165 165 / var(--tw-placeholder-opacity));
        }

        .placeholder-red-300::placeholder {
            --tw-placeholder-opacity: 1;
            color: rgb(252 165 165 / var(--tw-placeholder-opacity));
        }

        .shadow-lg {
            --tw-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
            --tw-shadow-colored: 0 10px 15px -3px var(--tw-shadow-color), 0 4px 6px -4px var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
        }

        .shadow-sm {
            --tw-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05);
            --tw-shadow-colored: 0 1px 2px 0 var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
        }

        .shadow-xl {
            --tw-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
            --tw-shadow-colored: 0 20px 25px -5px var(--tw-shadow-color), 0 8px 10px -6px var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
        }

        .ring-blue-500 {
            --tw-ring-opacity: 1;
            --tw-ring-color: rgb(59 130 246 / var(--tw-ring-opacity));
        }

        .ring-gray-500 {
            --tw-ring-opacity: 1;
            --tw-ring-color: rgb(107 114 128 / var(--tw-ring-opacity));
        }

        .ring-gray-300 {
            --tw-ring-opacity: 1;
            --tw-ring-color: rgb(209 213 219 / var(--tw-ring-opacity));
        }

        .backdrop-blur-xl {
            --tw-backdrop-blur: blur(24px);
            -webkit-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
            backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
        }

        .transition {
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, -webkit-backdrop-filter;
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter;
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter, -webkit-backdrop-filter;
            transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
            transition-duration: 150ms;
        }

        .duration-150 {
            transition-duration: 150ms;
        }

        .ease-in-out {
            transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
        }

        /*.hover\:bg-blue-700:hover {*/
        /*    --tw-bg-opacity: 1;*/
        /*    background-color: rgb(29 78 216 / var(--tw-bg-opacity));*/
        /*}*/

        /*.hover\:bg-gray-700:hover {*/
        /*    --tw-bg-opacity: 1;*/
        /*    background-color: rgb(55 65 81 / var(--tw-bg-opacity));*/
        /*}*/

        /*.hover\:bg-gray-300:hover {*/
        /*    --tw-bg-opacity: 1;*/
        /*    background-color: rgb(209 213 219 / var(--tw-bg-opacity));*/
        /*}*/

        /*.hover\:text-blue-500:hover {*/
        /*    --tw-text-opacity: 1;*/
        /*    color: rgb(59 130 246 / var(--tw-text-opacity));*/
        /*}*/

        /*.hover\:shadow-xl:hover {*/
        /*    --tw-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);*/
        /*    --tw-shadow-colored: 0 20px 25px -5px var(--tw-shadow-color), 0 8px 10px -6px var(--tw-shadow-color);*/
        /*    box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);*/
        /*}*/

        /*.focus\:border-blue-500:focus {*/
        /*    --tw-border-opacity: 1;*/
        /*    border-color: rgb(59 130 246 / var(--tw-border-opacity));*/
        /*}*/

        /*.focus\:border-red-500:focus {*/
        /*    --tw-border-opacity: 1;*/
        /*    border-color: rgb(239 68 68 / var(--tw-border-opacity));*/
        /*}*/

        /*.focus\:shadow-xl:focus {*/
        /*    --tw-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);*/
        /*    --tw-shadow-colored: 0 20px 25px -5px var(--tw-shadow-color), 0 8px 10px -6px var(--tw-shadow-color);*/
        /*    box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);*/
        /*}*/

        /*.focus\:outline-none:focus {*/
        /*    outline: 2px solid transparent;*/
        /*    outline-offset: 2px;*/
        /*}*/

        /*.focus\:ring-2:focus {*/
        /*    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);*/
        /*    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);*/
        /*    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000);*/
        /*}*/

        /*.focus\:ring-blue-500:focus {*/
        /*    --tw-ring-opacity: 1;*/
        /*    --tw-ring-color: rgb(59 130 246 / var(--tw-ring-opacity));*/
        /*}*/

        /*.focus\:ring-red-500:focus {*/
        /*    --tw-ring-opacity: 1;*/
        /*    --tw-ring-color: rgb(239 68 68 / var(--tw-ring-opacity));*/
        /*}*/

        .focus\:ring-offset-2:focus {
            --tw-ring-offset-width: 2px;
        }

        @media (min-width: 640px) {
            .sm\:mt-10 {
                margin-top: 2.5rem;
            }

            .sm\:mt-6 {
                margin-top: 1.5rem;
            }

            .sm\:p-10 {
                padding: 2.5rem;
            }

            .sm\:text-3xl {
                font-size: 1.875rem;
                line-height: 2.25rem;
            }
        }
    </style>
</head>
<body class="min-h-screen bg-gray-50 bg-[url('img/wave.svg')] bg-fixed bg-bottom bg-no-repeat">


<header class="flex items-center justify-between p-6">
    <a href="index.html" class="flex items-center gap-2">
        <svg
                class="h-10 text-black"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 24 24"
                fill="currentColor"

        >
            <path
                    fill-rule="evenodd"
                    d="M12.516 2.17a.75.75 0 00-1.032 0 11.209 11.209 0 01-7.877 3.08.75.75 0 00-.722.515A12.74 12.74 0 002.25 9.75c0 5.942 4.064 10.933 9.563 12.348a.749.749 0 00.374 0c5.499-1.415 9.563-6.406 9.563-12.348 0-1.39-.223-2.73-.635-3.985a.75.75 0 00-.722-.516l-.143.001c-2.996 0-5.717-1.17-7.734-3.08zm3.094 8.016a.75.75 0 10-1.22-.872l-3.236 4.53L9.53 12.22a.75.75 0 00-1.06 1.06l2.25 2.25a.75.75 0 001.14-.094l3.75-5.25z"
                    clip-rule="evenodd"
            />
        </svg>
        <span class="text-xl font-black">Security</span>
    </a>
    <div class="flex gap-2">
        <a
                class="focus: rounded-md bg-gray-200 px-4 py-2 font-semibold text-gray-900 shadow-lg ring-gray-300 transition duration-150 ease-in-out hover:bg-gray-300 hover:shadow-xl focus:shadow-xl focus:outline-none focus:ring-2 focus:ring-offset-2"
                href="login.html"
        >Sign Out</a
        >
    </div>
</header>
<main class="flex flex-col justify-center p-6 pb-12">
    <div class="mx-auto max-w-md">
        <svg
                class="mx-auto h-12 text-blue-600"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
        >
            <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75"
            />
        </svg>

        <h2 class="mt-2 text-2xl font-bold text-gray-900 sm:mt-6 sm:text-3xl">
            Verify Email
        </h2>
    </div>
    <div
            class="mx-auto mt-6 w-full max-w-md rounded-xl bg-white/80 p-6 shadow-xl backdrop-blur-xl sm:mt-10 sm:p-10"
    >
        <div
                class="flex gap-3 rounded-md border border-yellow-500 bg-yellow-50 p-4"
        >
            <svg
                    class="h-5 w-5 text-yellow-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="currentColor"
            >
                <path
                        fill-rule="evenodd"
                        d="M9.401 3.003c1.155-2 4.043-2 5.197 0l7.355 12.748c1.154 2-.29 4.5-2.599 4.5H4.645c-2.309 0-3.752-2.5-2.598-4.5L9.4 3.003zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zm0 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z"
                        clip-rule="evenodd"
                />
            </svg>

            <h3 class="text-sm font-medium text-yellow-800">
                Please verify your email. We just emailed you verification link.
            </h3>
        </div>
        <form action="VerifyCode" method="post" autocomplete="off" class="mt-6 space-y-6">
            <input type="text" name="authcodes">
            <div>

                    <input type="submit" value="Resend Verification Link" class="focus: flex items-center justify-center rounded-md bg-blue-600 px-4 py-2 font-semibold text-white shadow-lg ring-blue-500 transition duration-150 ease-in-out hover:bg-blue-700 hover:shadow-xl focus:shadow-xl focus:outline-none focus:ring-2 focus:ring-offset-2">
<%--                <input type="submit" value="Resend Verification Link" class="flex items-center justify-center rounded-md bg-black px-4 py-2 font-semibold text-white shadow-lg ring-black transition duration-150 ease-in-out hover:bg-black hover:shadow-xl focus:shadow-xl focus:outline-none focus:ring-2 focus:ring-offset-2">--%>
<%--                <input type="submit" value="Resend Verification Link" class="flex items-center justify-center rounded-md bg-black text-white px-4 py-2 font-semibold shadow-lg ring-black transition duration-150 ease-in-out hover:bg-black hover:shadow-xl focus:shadow-xl focus:outline-none focus:ring-2 focus:ring-offset-2">--%>
<%--                <input type="submit" value="Resend Verification Link" class="flex items-center justify-center rounded-md bg-black text-white px-4 py-2 font-semibold border-none hover:bg-gray-800 ">--%>
<%--                <button>hello</button>--%>
<%--    <a--%>
<%--            class="focus: flex items-center justify-center rounded-md bg-blue-600 px-4 py-2 font-semibold text-white shadow-lg ring-blue-500 transition duration-150 ease-in-out hover:bg-blue-700 hover:shadow-xl focus:shadow-xl focus:outline-none focus:ring-2 focus:ring-offset-2"--%>
<%--            href="#!"--%>
<%--    >Resend Verification Link</a--%>
<%--    >--%>

            </div>
        </form>
    </div>
</main>


</body>
</html>
