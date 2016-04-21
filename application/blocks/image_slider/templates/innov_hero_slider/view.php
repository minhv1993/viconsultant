<?php defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item" style="<?php echo isset($width) ? "width: $width;" : '' ?><?php echo isset($height) ? "height: $height;" : '' ?>">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Image Slider disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
<script>
$(document).ready(function(){
    $(function () {
        $("#innov-image-slider-<?php echo $bID ?>").responsiveSlides({
            prevText: "",   // String: Text for the "previous" button
            nextText: "",
            <?php if($navigationType == 0) { ?>
            nav:true,
            <?php } else { ?>
            pager: true,
            <?php } ?>
            <?php if ($timeout) { echo "timeout: $timeout,"; } ?>
            <?php if ($speed) { echo "speed: $speed,"; } ?>
            <?php if ($pause) { echo "pause: true,"; } ?>
            <?php if ($noAnimate) { echo "auto: false,"; } ?>
        });
    });
});
</script>

<div class="row innov-image-slider-container innov-block-image-slider-<?php echo $navigationTypeText?>" >
    <div class="xs-12 no-padding-xs no-padding-sm">
        <?php if(count($rows) > 0) { ?>
        <div class="innov-image-slider-wrapper">
            <ul class="rslides innov-image-slider-inner" id="innov-image-slider-<?php echo $bID ?>">
            <?php foreach($rows as $row) {
                $f = File::getRelativePathFromID($row['fID']); ?>
                <li style="background-image: url(<?php echo $f ?>)">
                <?php if($row['linkURL']) { ?>
                    <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay"></a>
                <?php } ?>
                <?php if($row['title'] || $row['description']) { ?>
                <div class="innov-image-slider-text">
                    <?php if($row['title']) { ?>
                    	<h2 class="innov-image-slider-title"><?php echo $row['title'] ?></h2>
                    <?php } ?>
                    <?php echo $row['description'] ?>
                </div>
                <?php } ?>
                </li>
            <?php } ?>
            </ul>
        </div>
        
        <?php } else { ?>
        <div class="innov-image-slider-placeholder">
            <p><?php echo t('No Slides Entered.'); ?></p>
        </div>
        <?php } ?>

    </div>
</div>
<?php } ?>