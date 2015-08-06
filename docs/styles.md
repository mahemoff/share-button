# CSS Styles

Our CSS styles can be found [here](https://github.com/carrot/share-button/blob/master/src/styles.styl).

With our styles, a button that looks like this:
<p align="center">
<img src="http://i.imgur.com/f6jyApq.png">
</p>
Will have this source code:
```html
<share-button class="sharer-0" style="display: initial;">Share
    <div class="sb-social sb-top sb-center networks-7 active">
        <ul>
            <li class="pinterest enabled" data-network="pinterest">
                <a onclick="return false"></a>
            </li>
            <li class="twitter enabled" data-network="twitter">
                <a onclick="return false"></a>
            </li>
            <li class="facebook enabled" data-network="facebook">
                <a onclick="return false"></a>
            </li>
            <li class="whatsapp disabled" data-network="whatsapp">
                <a onclick="return false"></a>
            </li>
            <li class="googlePlus enabled" data-network="googlePlus">
                <a onclick="return false"></a>
            </li>
            <li class="reddit enabled" data-network="reddit">
                <a onclick="return false"></a>
            </li>
            <li class="linkedin enabled" data-network="linkedin">
                <a onclick="return false"></a>
            </li>
            <li class="email enabled" data-network="email">
                <a onclick="return false"></a>
            </li>
        </ul>
    </div>
</share-button>
```
