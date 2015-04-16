

{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->


			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				<footer id="footer">
					<div class="line footer-top">
						<div class="col_16 col_centered">
							<span><i class="icon-payment"></i>Paiement sécurisé</span>
							<span><i class="icon-delivery"></i>Livraison colissimo offert à partir de 30€ d’achat</span>
							<span><i class="icon-phones"></i>Service client téléphonique</span>
						</div>
					</div>
					<div class="col_16 col_centered">{$HOOK_FOOTER}</div>
					<div class="col_16 col_centered">
						<section class="footer-block col-xs-12 col-sm-2 col-md-offset-1">
							<h4>Qui sommes-nous?</h4>
							<ul class="toggle-footer">
								<li class="item"><a href="http://origami.dev/content/2-mentions-legales" title="Mentions légales">Notre histoire</a></li>
								<li class="item"><a href="http://origami.dev/content/3-conditions-utilisation" title="Conditions d&#039;utilisation">Le concept</a></li>
								<li><a href="http://origami.dev/plan-site" title="sitemap">L'équipe</a></li>
							</ul>
						</section>
						<section class="footer-block col-xs-12 col-sm-2 col-md-offset-1">
							<h4>service client</h4>
							<ul class="toggle-footer">
								<li class="item"><a href="http://origami.dev/content/2-mentions-legales" title="Mentions légales">Livraison</a></li>
								<li class="item"><a href="http://origami.dev/content/3-conditions-utilisation" title="Conditions d&#039;utilisation">Satisfait ou remboursé</a></li>
								<li><a href="http://origami.dev/contact" title="sitemap">Nous contacter</a></li>
							</ul>
						</section>
						<section class="footer-block col-xs-12 col-col-sm-2 col-md-offset-1">
							<h4>Informations</h4>
							<ul class="toggle-footer">
								<li class="item"><a href="http://origami.dev/content/2-mentions-legales" title="Mentions légales">Mentions légales</a></li>
								<li class="item"><a href="http://origami.dev/content/3-conditions-utilisation" title="Conditions d&#039;utilisation">Conditions d&#039;utilisation</a></li>
								<li><a href="http://origami.dev/plan-site" title="sitemap">Plan du site</a></li>
							</ul>
						</section>
					</div>
				</footer>
				<!-- #footer -->
			{/if}

		</div><!-- #page -->
{/if}

{include file="$tpl_dir./global.tpl"}
	</body>
</html>