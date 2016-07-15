<div class="tab-content">
    <a href="https://www.rovnanik.sk" target="_blank">
	    <img src="rsk2.png" alt="Logo" class="center-block" style="box-shadow: 0px 2px 25px rgba(0, 0, 0, .25);">
	</a>
</div>
<div class="tab-content">
    <div id="login" class="tab-pane active">
        <form method="post" action="${sri.makeUrlByType("login", "transition", null, "false").getUrl()}" class="form-signin">
            <p class="text-muted text-center">Zadajte svoje meno a heslo pre prihlásenie</p>
            <#-- not needed for this request: <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}"> -->
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="Používateľské meno" required="required" class="form-control top">
            <#if !ec.getWeb()?? || ec.getWeb().getSession().getAttribute("moqui.tenantAllowOverride")! != "N">
                <input type="password" name="password" placeholder="Heslo" required="required" class="form-control middle">
                <input type="text" name="tenantId" placeholder="ID firmy v skupine" class="form-control bottom">
            <#else>
                <input type="password" name="password" placeholder="Heslo" required="required" class="form-control bottom">
            </#if>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Prihlás sa</button>
        </form>
    </div>
    <div id="reset" class="tab-pane">
        <form method="post" action="${sri.makeUrlByType("resetPassword", "transition", null, "false").getUrl()}" class="form-signin">
            <p class="text-muted text-center">Zadaj používateľské meno pre vygenerovanie nového hesla</p>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <#if !ec.getWeb()?? || ec.getWeb().getSession().getAttribute("moqui.tenantAllowOverride")! != "N">
                <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="Používateľské meno" required="required" class="form-control top">
                <input type="text" name="tenantId" value="${(ec.getWeb().getErrorParameters().get("tenantId"))!""}" placeholder="ID firmy v skupine" class="form-control bottom">
            <#else>
                <input type="text" name="username" placeholder="Používateľské meno" required="required" class="form-control">
            </#if>
            <button class="btn btn-lg btn-danger btn-block" type="submit">Zresetuj heslo</button>
        </form>
    </div>
    <div id="change" class="tab-pane">
        <form method="post" action="${sri.makeUrlByType("changePassword", "transition", null, "false").getUrl()}" class="form-signin">
            <p class="text-muted text-center">Zadajte detaily pre zmenu hesla</p>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="Používateľské meno" required="required" class="form-control top">
            <input type="password" name="oldPassword" placeholder="Staré heslo" required="required" class="form-control middle">
            <input type="password" name="newPassword" placeholder="Nové heslo" required="required" class="form-control middle">
            <#if !ec.getWeb()?? || ec.getWeb().getSession().getAttribute("moqui.tenantAllowOverride")! != "N">
                <input type="password" name="newPasswordVerify" placeholder="Overenie nového hesla" required="required" class="form-control middle">
                <input type="text" name="tenantId" value="${(ec.getWeb().getErrorParameters().get("tenantId"))!""}" placeholder="ID firmy v skupine" class="form-control bottom">
            <#else>
                <input type="password" name="newPasswordVerify" placeholder="Overenie nového hesla" required="required" class="form-control bottom">
            </#if>
            <button class="btn btn-lg btn-danger btn-block" type="submit">Zmeň heslo</button>
        </form>
    </div>
</div>
<div class="text-center">
    <ul class="list-inline">
        <li><a class="text-muted" href="#login" data-toggle="tab">Prihlásenie</a></li>
        <li><a class="text-muted" href="#reset" data-toggle="tab">Zresetovanie hesla</a></li>
        <li><a class="text-muted" href="#change" data-toggle="tab">Zmena hesla</a></li>
		<li><a class="text-muted" href="https://rovnanik.demo.xwiki.com/xwiki/wiki/rskmoquidoc/view/prihlasovanie/" target="_blank">Pomoc</a></li>
    </ul>
</div>
