[#ftl]
[@c.page]
    <div class="detail">
        <div class="vizitka">
            <div class="jmeno">${vizitka.celeJmeno}</div>
            <div class="firma">${vizitka.firma}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${vizitka.ulice}</div>
                    <div><span>${vizitka.psc}</span> <span>${vizitka.obec}</span></div>
                </div>
                <div class="kontakty">
                    [#if vizitka.email??]<div><i class="las la-at"></i> <span>${vizitka.email}</span>[#else]<em><small>neuvedeno</small></em></div>[/#if]
                    [#if vizitka.telefon??]<div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span>[#else]<em><small>neuvedeno</small></em></div>[/#if]
                    [#if vizitka.web??]<div><i class="las la-globe"></i> <span>${vizitka.web}</span>[#else]<em><small>neuvedeno</small></em></div>[/#if]
                </div>
            </div>
        </div>

        <div class="mapa">
            <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa?url}" width="100%" height="100%"
                    frameborder="0"></iframe>
        </div>

        [@c.back /]

        <nav>
            <a href="/${vizitka.id}/upravit"><button type="submit" class="btn btn-light">Upravit</button></a>
        </nav>

        <nav>
            <a href="/${vizitka.id}/smazat"><button type="submit" class="btn btn-light" name="akce" value="smazat">Smazat</button></a>
[#--            <a href="/"><div name="akce"></div>x smazat</a>--]
        </nav>
    </div>
[/@c.page]
