<?php  
namespace Application\Block\InnoeAnchorBlock;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController
{
	protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    // protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btDefaultSet = 'theme_innoe';

    public function getBlockTypeDescription()
    {
        return t("Set an anchor point to jump to specific point on this page.");
    }

    public function getBlockTypeName()
    {
        return t("Link anchor point");
    }
}
