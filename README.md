TiDynamicTypeUtils
==========

Use Dynamic Type in your Titanium SDK application!


Example
-------

An extensive example can be found in `example/app.js`, the following one just acts as an overview.


```js
var dynamictype = require('it.smc.dynamictypeutils')

var label = Ti.UI.createLabel({
	font: {
		fontSize: dynamictype.getFontSize(Ti.UI.TEXT_STYLE_SUBHEADLINE)
	}
});
```

***Remember:*** when you use Dynamic Type, the interface **does not update automatically** if has already been created and the user changes the system font size. This is the expected behaviour on iOS 7.

Support for Android
-------------------

In Android you do not need this module, nor any module at all, just use the `'sp'` unit.


Credits
-------

Humbly made by the spry ladies and gents at SMC.


License
-------

This library, *TiDynamicTypeUtils*, is free software ("Licensed Software"); you can
redistribute it and/or modify it under the terms of the [GNU Lesser General
Public License](http://www.gnu.org/licenses/lgpl-2.1.html) as published by the
Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

This library is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; including but not limited to, the implied warranty of MERCHANTABILITY,
NONINFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General
Public License for more details.

You should have received a copy of the [GNU Lesser General Public
License](http://www.gnu.org/licenses/lgpl-2.1.html) along with this library; if
not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
Floor, Boston, MA 02110-1301 USA
