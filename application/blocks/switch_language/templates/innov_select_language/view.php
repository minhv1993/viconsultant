<?php   defined('C5_EXECUTE') or die("Access Denied.");
$ih = Core::make('multilingual/interface/flag');
?>
<div class="innov-block-switch-language-flags">
	<div class="innov-block-switch-language-flags-label"><?php   echo $label?></div>
	<ul>
	<?php   foreach($languageSections as $ml) : ?>
		<li><a href="<?php   echo $view->action('switch_language', $cID, $ml->getCollectionID())?>" title="<?php   echo $ml->getLanguageText($locale)?>" class="<?php   if ($activeLanguage == $ml->getCollectionID()) { ?>innov-block-switch-language-active-flag<?php   } ?>">
		<?php   echo $ml->msLanguage ?>
		</a></li>

<?php   //var_dump($ml) ?>

	<?php   endforeach; ?>
	</ul>
</div>
