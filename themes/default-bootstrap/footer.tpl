

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
				</footer>
				<!-- #footer -->
			{/if}

		</div><!-- #page -->
{/if}

{include file="$tpl_dir./global.tpl"}
	</body>
</html>