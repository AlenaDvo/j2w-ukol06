[#ftl]
[@c.page]
    [#list seznam]
        <div class="seznam">
        <a href="/detail">
            [#items as vizitka]
                <div class="vizitka">
                    <div class="jmeno">${vizitka.celeJmeno}</div>
                    <div class="firma">${vizitka.firma}</div>
                    <div class="udaje">
                        <div class="adresa">
                            <div>${vizitka.ulice}</div>
                            <div><span>${vizitka.psc}</span> <span>${vizitka.obec}</span></div>
                        </div>
                        <div class="kontakty">
                            [#if vizitka.email??]
                                <div><i class="las la-at"></i> <span>${vizitka.email}</span>[#else]
                                <em><small>neuvedeno</small></em></div>[/#if]
                            [#if vizitka.telefon??]
                                <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span>[#else]
                                <em><small>neuvedeno</small></em>
                                </div>[/#if]
                            [#if vizitka.web??]
                                <div><i class="las la-globe"></i><span>${vizitka.web}</span>[#else]
                                <em><small>neuvedeno</small></em></div>[/#if]
                        </div>
                    </div>
                </div>
            [/#items]
        </a>
    [#else]
        <p class="fst-italic">Seznam vizitek je prázdný.</p>
    [/#list]

    <a href="/nova">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white"/>
                <rect width="100" height="20" x="0" y="40" fill="white"/>
            </svg>
        </div>
    </a>
    </div>
[/@c.page]
