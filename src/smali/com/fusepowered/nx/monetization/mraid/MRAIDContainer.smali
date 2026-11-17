.class public Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
.super Landroid/view/ViewGroup;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;
    }
.end annotation


# static fields
.field private static final DELAY_BRING_TO_FRONT:J = 0x64L

.field private static final DELAY_REATTACH:J = 0x28L

.field private static final MRAID_INTERFACE_NAME:Ljava/lang/String; = "nativeXSDK"

.field private static final MSG_BRING_TO_FRONT:I = 0x3e8

.field private static final MSG_CLOSE_ANIMATION_END:I = 0x3eb

.field private static final MSG_CLOSE_ANIMATION_MIN_DURATION:J = 0x1f4L

.field private static final MSG_LOAD_AD_DATA:I = 0x3ea

.field private static final MSG_REATTACH:I = 0x3e9

.field private static final REATTACH_RETRY_COUNT:I = 0x14

.field private static closeRegionSize:I

.field static final handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityClassName:Ljava/lang/String;

.field private adConverted:Z

.field private adExpired:Z

.field private adFinishedLoading:Z

.field private adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

.field private adIsCached:Z

.field private adIsPending:Z

.field private adName:Ljava/lang/String;

.field private adToDeviceInterface:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;

.field private attemptedReleaseCount:I

.field private bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

.field private closeIndicatorIsVisible:Z

.field private closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

.field private closePositionChanged:Z

.field private closeRect:Landroid/graphics/Rect;

.field private closeRegion:Landroid/widget/ImageView;

.field private closeRegionIsEnabled:Z

.field private containerName:Ljava/lang/String;

.field private currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

.field private defaultActivityOrientation:I

.field private defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

.field private deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

.field private dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

.field private didFireDisplayListener:Z

.field private expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

.field private hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private lastEventLevel:I

.field private maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

.field private md5usedInThisAd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mraidLoaded:Z

.field private oldHeight:I

.field private oldWidth:I

.field private final onCloseClicked:Landroid/view/View$OnClickListener;

.field private onRichMediaEvent:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

.field private orientationProperties:Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

.field private placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

.field private position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

.field private released:Z

.field private resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

.field private schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

.field private secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

.field private showAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

.field private final tempRect:Landroid/graphics/Rect;

.field private url:Ljava/lang/String;

.field private videoAutoPlay:Z

.field private videoOptionsJSON:Ljava/lang/String;

.field private wasDisplayFired:Z

.field private webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

.field private willCloseAdOnRedirect:Z

.field private workers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1570
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 99
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 101
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 104
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 105
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 111
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 113
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 114
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 115
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 116
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 117
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 118
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 119
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 133
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 136
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 137
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 138
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 139
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 140
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 141
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 142
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 153
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 154
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 156
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 188
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 101
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 104
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 105
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 111
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 113
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 114
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 115
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 116
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 117
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 118
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 119
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 133
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 136
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 137
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 138
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 139
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 140
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 141
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 142
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 153
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 154
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 156
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 177
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 101
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 104
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 105
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 111
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 113
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 114
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 115
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 116
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 117
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 118
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 119
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 133
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 136
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 137
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 138
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 139
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 140
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 141
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 142
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 153
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 154
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 156
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 172
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 99
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 101
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 104
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 105
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 111
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 113
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 114
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 115
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 116
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 117
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 118
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 119
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 133
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 136
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 137
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 138
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 139
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 140
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 141
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 142
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 153
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 154
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 156
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 182
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->loadAdUrl(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 99
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 101
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 104
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 105
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 111
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 113
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 114
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 115
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 116
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 117
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 118
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 119
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 120
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 133
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 134
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 136
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 137
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 138
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 139
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 140
    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 141
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 142
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 153
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 154
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 156
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 158
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "x1"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)I
    .locals 2
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseAnimationEnd()V

    return-void
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    return-object v0
.end method

.method private addCloseRegion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bringChildToFront(Landroid/view/View;)V

    .line 310
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 293
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 298
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attachToCurrentActivity(I)Z
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 466
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 468
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_2

    .line 469
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eq v2, v3, :cond_0

    .line 470
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 471
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->createDialog()Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 474
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->show()V

    .line 477
    :cond_1
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 496
    :goto_0
    return v0

    .line 486
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->detachFromParent()V

    .line 487
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->makeContainerInvisibleForVideoAutoPlay()V

    .line 488
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 495
    :cond_3
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->sendReattachMessage(I)V

    move v0, v1

    .line 496
    goto :goto_0
.end method

.method private canFireEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1739
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DISPLAYED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    if-ne p1, v2, :cond_0

    .line 1740
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    .line 1742
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/AdEvent;->getEventLevel()I

    move-result v2

    if-gez v2, :cond_2

    .line 1752
    :cond_1
    :goto_0
    return v0

    .line 1744
    :cond_2
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/AdEvent;->getEventLevel()I

    move-result v2

    iget v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    if-le v2, v3, :cond_3

    .line 1745
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DISMISSED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->wasDisplayFired:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 1747
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1752
    goto :goto_0
.end method

.method private changeCloseIndicatorBackground()V
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "closeDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->getThemeElementType()Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 331
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 336
    return-void
.end method

.method private closeAd()V
    .locals 1

    .prologue
    .line 1319
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 1320
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    if-eqz v0, :cond_0

    .line 1321
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getDeviceBalance()V

    .line 1323
    :cond_0
    return-void
.end method

.method private createDialog()Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 507
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->setContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    return-object v0
.end method

.method public static getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    const-string p1, ""

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPageSize()V
    .locals 2

    .prologue
    .line 1442
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 1443
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "nativeXSizeScript"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 1445
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 225
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setActivity(Landroid/app/Activity;)V

    .line 226
    invoke-virtual {p0, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWillNotDraw(Z)V

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    .line 228
    sget v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 229
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 230
    .local v0, "adToDeviceHandler":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    invoke-direct {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;-><init>(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    .line 231
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;

    invoke-direct {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;-><init>(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adToDeviceInterface:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;

    .line 232
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    .line 234
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    .line 235
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    .line 236
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    .line 237
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 238
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    .line 240
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    .line 241
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;)V

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    .line 243
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 244
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 247
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 248
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 249
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 251
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 252
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 253
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 255
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 256
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/enums/BannerPosition;->initialize(Landroid/app/Activity;)V

    .line 257
    return-void
.end method

.method private isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 596
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 597
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 598
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isResizePropertiesValid()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1150
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    if-nez v5, :cond_0

    .line 1151
    const-string v5, "Resize properties null."

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v8, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1222
    :goto_0
    return v4

    .line 1154
    :cond_0
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1155
    const-string v5, "The WebView cannot be smaller than the close region."

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v8, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1158
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 1159
    :cond_2
    const-string v5, "The WebView could not be bigger than the screen when resized."

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v8, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1162
    :cond_3
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1163
    const-string v5, "The resize() method should not be used to expand fullscreen, please use expand()"

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v8, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v5, v6}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getCheckRect(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1167
    .local v3, "resizeRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->allowOffscreen()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1168
    const/4 v0, 0x1

    .line 1169
    .local v0, "closeIsOnScreen":Z
    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$ClosePosition:[I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1204
    :pswitch_0
    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1205
    :cond_5
    const/4 v0, 0x0

    .line 1217
    :cond_6
    :goto_1
    if-nez v0, :cond_f

    .line 1218
    const-string v5, "Close region must be on screen"

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v8, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto/16 :goto_0

    .line 1171
    :pswitch_1
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_7

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_6

    .line 1172
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 1176
    :pswitch_2
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_8

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1177
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 1181
    :pswitch_3
    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_9

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    .line 1182
    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_9

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    .line 1183
    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1184
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 1188
    :pswitch_4
    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 1189
    .local v1, "posX":I
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 1190
    .local v2, "posY":I
    if-ltz v1, :cond_a

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_b

    .line 1191
    :cond_a
    const/4 v0, 0x0

    .line 1193
    :cond_b
    if-ltz v2, :cond_c

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1194
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1198
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    :pswitch_5
    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_d

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_6

    .line 1199
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1209
    :pswitch_6
    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_e

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_e

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    .line 1211
    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1212
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1222
    .end local v0    # "closeIsOnScreen":Z
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private onCloseAnimationEnd()V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->release()V

    .line 989
    return-void
.end method

.method private onReleaseFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 918
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to release the ad failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 920
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 924
    :goto_1
    return-void

    .line 919
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 922
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Ad failed to release."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized release()V
    .locals 5

    .prologue
    .line 869
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 914
    :goto_0
    monitor-exit p0

    return-void

    .line 873
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 876
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Not on UI thread"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onReleaseFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 911
    :catch_0
    move-exception v1

    .line 912
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onReleaseFailed(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 869
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 879
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 880
    .local v0, "currentActivity":Landroid/app/Activity;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 881
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    .line 882
    .local v2, "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;->release()V

    goto :goto_1

    .line 884
    .end local v2    # "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    :cond_2
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 885
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->removeAllViews()V

    .line 886
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v3, :cond_3

    .line 887
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->release()V

    .line 889
    :cond_3
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v3, :cond_4

    .line 890
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 893
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v3, v4, :cond_5

    .line 894
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->detachFromParent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 899
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 900
    :try_start_5
    iget v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 901
    instance-of v3, v0, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;

    if-eqz v3, :cond_6

    .line 902
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 905
    :cond_6
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    if-eqz v3, :cond_7

    .line 906
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 908
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Ad released"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 910
    sget-object v3, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DISMISSED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v4, "Ad is dismissed"

    invoke-virtual {p0, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 896
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private removeCloseRegion()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 314
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_0
    :pswitch_0
    return-void

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendBringToFrontMessage()V
    .locals 4

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_1

    .line 1516
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1517
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1519
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendReattachMessage(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 515
    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    .line 516
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 517
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 518
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setCloseRegionPosition(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "adPosition"    # Landroid/graphics/Rect;

    .prologue
    .line 739
    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$ClosePosition:[I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 777
    :pswitch_0
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 778
    .local v1, "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 779
    .local v3, "t":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 780
    .local v2, "r":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 790
    .local v0, "b":I
    :goto_0
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 791
    return-void

    .line 741
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 742
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 743
    .restart local v3    # "t":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 744
    .restart local v2    # "r":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 745
    .restart local v0    # "b":I
    goto :goto_0

    .line 748
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 749
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 750
    .restart local v3    # "t":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 751
    .restart local v2    # "r":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 752
    .restart local v0    # "b":I
    goto :goto_0

    .line 755
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_3
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 756
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 757
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 758
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 759
    .restart local v0    # "b":I
    goto :goto_0

    .line 762
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_4
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 763
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 764
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 765
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 766
    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 769
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 770
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 771
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 772
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 773
    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 784
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_6
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 785
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 786
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 787
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private setDefaultPosition()V
    .locals 3

    .prologue
    .line 1449
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    if-nez v1, :cond_0

    .line 1450
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    .line 1451
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;->setPosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setDefaultPosition(Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :goto_0
    return-void

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setDeviceFeatures()V
    .locals 3

    .prologue
    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setDeviceFeatures(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_0
    return-void

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MRAID loaded: Activity instance lost."

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setMaxSize()V
    .locals 3

    .prologue
    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    if-nez v1, :cond_0

    .line 1257
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    .line 1258
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setModal(Ljava/lang/Boolean;)V

    .line 1259
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setHeight(Ljava/lang/Integer;)V

    .line 1262
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setWidth(Ljava/lang/Integer;)V

    .line 1263
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setMaxSize(Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setNativeVideoFeatures()V
    .locals 3

    .prologue
    .line 1279
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setNativeVideoFeatures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MRAID loaded: setNativeVideoFeatures."

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setPlacementType()V
    .locals 3

    .prologue
    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setPlacementType(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_0
    return-void

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setScreenSize()V
    .locals 7

    .prologue
    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1307
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v1

    .line 1308
    .local v1, "height":I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v4

    .line 1309
    .local v4, "width":I
    new-instance v3, Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;

    invoke-direct {v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;-><init>()V

    .line 1310
    .local v3, "screenSize":Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;->setWidth(Ljava/lang/Integer;)V

    .line 1311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;->setHeight(Ljava/lang/Integer;)V

    .line 1312
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v5, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setScreenSize(Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    .end local v1    # "height":I
    .end local v2    # "manager":Landroid/view/WindowManager;
    .end local v3    # "screenSize":Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v0, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setSizes()V
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    if-eqz v0, :cond_0

    .line 1249
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setMaxSize()V

    .line 1250
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setScreenSize()V

    .line 1252
    :cond_0
    return-void
.end method

.method private setWebViewLayout(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "webView"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p2, "layout"    # Landroid/graphics/Rect;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 729
    :try_start_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to layout the RichMedia webview."

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method adConverted()V
    .locals 1

    .prologue
    .line 1765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 1766
    return-void
.end method

.method addCalendarEntry(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 3
    .param p1, "entry"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 1575
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;->createCalendarWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method attachToActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 442
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    move-object v0, p1

    .line 444
    .local v0, "parent":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setActivity(Landroid/app/Activity;)V

    .line 453
    :goto_0
    if-eqz v0, :cond_1

    .line 455
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    .line 461
    .end local v0    # "parent":Landroid/app/Activity;
    :cond_1
    return-void

    .line 449
    .restart local v0    # "parent":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public bringToFront()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->sendBringToFrontMessage()V

    .line 1511
    invoke-super {p0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 1512
    return-void
.end method

.method changeOrientation()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeOrientation(Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;)V

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    const-string v0, "OrientationProperties are null"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method changeOrientation(Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;)V
    .locals 4
    .param p1, "orientationProperties"    # Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    .prologue
    const/16 v3, 0x9

    .line 993
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;

    if-nez v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->getForceOrientation()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v0

    .line 998
    .local v0, "forcedOrientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    if-eq v0, v1, :cond_2

    .line 999
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$Orientation:[I

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1017
    :cond_2
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->getAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1018
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getOrientationToSet()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1001
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1008
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    .line 1009
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1011
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1020
    :cond_5
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkForAutoPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoPlayerOptionsJSON"    # Ljava/lang/String;

    .prologue
    .line 1874
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "autoPlay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    const-string v1, "autoPlay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setIsVideoAutoPlay(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1878
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method clearAllAlphaAnimations()V
    .locals 0

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->clearAnimation()V

    .line 1813
    return-void
.end method

.method close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1050
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1075
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeAd()V

    .line 1082
    :goto_0
    return-void

    .line 1052
    :pswitch_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v1, v2, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 1054
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 1055
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bringChildToFront(Landroid/view/View;)V

    .line 1056
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1060
    :cond_0
    :pswitch_1
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1061
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->COLLAPSED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "The ad was returned to default state from being expanded or resized"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 1063
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setClosePosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;)V

    .line 1064
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->removeCloseRegion()V

    .line 1065
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 1069
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 1070
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1071
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught in close()"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1080
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v3, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setSchemeHandler(Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;)V

    .line 267
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adToDeviceInterface:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;

    const-string v2, "nativeXSDK"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 269
    return-object v0
.end method

.method detachFromParent()V
    .locals 1

    .prologue
    .line 429
    const-string v0, "Detaching container"

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dialogDismissed()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 501
    return-void
.end method

.method enableCloseRegion(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1864
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionIsEnabled:Z

    .line 1865
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_1

    .line 1088
    const-string v1, "Ad is interstitial"

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    .line 1092
    invoke-static {p1}, Lcom/fusepowered/nx/common/Utilities;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1093
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 1094
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-nez v1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->createWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 1098
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1099
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V

    .line 1107
    :goto_1
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1108
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->EXPANDED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "The ad was expanded"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bringToFront()V

    .line 1110
    sget v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 1111
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeOrientation()V

    .line 1112
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1113
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1114
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v1, :cond_4

    .line 1102
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->release()V

    .line 1104
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 1105
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "command"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p2, p3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 865
    :goto_0
    return-void

    .line 857
    :cond_0
    if-nez p2, :cond_1

    .line 858
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p1, p3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MRAID: MRAIDWebView reference lost."

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 860
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p1, p2, p3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1717
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->canFireEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->registerEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;)V

    .line 1719
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    :cond_0
    monitor-exit p0

    return-void

    .line 1717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fireVideoCancelledEvent()V
    .locals 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->VIDEO_CANCELLED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireNativeXEvent(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;)V

    .line 1848
    return-void
.end method

.method forceAdPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 796
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 797
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 798
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPosition()Lcom/fusepowered/nx/monetization/enums/BannerPosition;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    return-object v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 1479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    goto :goto_0
.end method

.method getCustomClosePosition()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v0

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    goto :goto_0
.end method

.method public getMD5ListUsed()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    return-object v0
.end method

.method getOrientationProperties()Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    return-object v0
.end method

.method getOrientationToSet()I
    .locals 4

    .prologue
    .line 1025
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1026
    .local v0, "orientation":I
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1027
    .local v2, "rotation":I
    iget v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    .line 1028
    .local v1, "orientationToSet":I
    packed-switch v0, :pswitch_data_0

    .line 1041
    :goto_0
    return v1

    .line 1030
    :pswitch_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1031
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1033
    :cond_1
    const/16 v1, 0x8

    .line 1034
    goto :goto_0

    .line 1036
    :pswitch_1
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1037
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1039
    :cond_3
    const/16 v1, 0x9

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getPlacementType()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method

.method getState()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method

.method public getVideoOptions()Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x1

    const/high16 v11, -0x80000000

    .line 1885
    new-instance v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    invoke-direct {v3}, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;-><init>()V

    .line 1886
    .local v3, "options":Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    sget-object v9, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->NATIVE_VIDEO_PLAYER_MUTE_BUTTON:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v9}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->mutedButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 1887
    sget-object v9, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->NATIVE_VIDEO_PLAYER_UNMUTE_BUTTON:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v9}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->notMutedButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 1888
    sget-object v9, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->NATIVE_VIDEO_PLAYER_CLOSE_BUTTON:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v9}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->skipButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 1891
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getOrientationProperties()Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    move-result-object v5

    .line 1892
    .local v5, "orientationProperties":Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;
    if-eqz v5, :cond_0

    .line 1893
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->getForceOrientation()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v1

    .line 1895
    .local v1, "forcedOrientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    if-eq v1, v9, :cond_f

    .line 1896
    sget-object v9, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$Orientation:[I

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1939
    .end local v1    # "forcedOrientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 1941
    :try_start_0
    new-instance v2, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    .line 1942
    .local v2, "gson":Lcom/fusepowered/nx/gson/Gson;
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    const-class v10, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;

    invoke-virtual {v2, v9, v10}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;

    .line 1943
    .local v8, "videoPlayerOptions":Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;
    if-eqz v8, :cond_c

    .line 1944
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->isAllowMute()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1945
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->isAllowMute()Z

    move-result v9

    iput-boolean v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowMute:Z

    .line 1948
    :cond_1
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->isStartMuted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1949
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->isStartMuted()Z

    move-result v9

    iput-boolean v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->startMuted:Z

    .line 1952
    :cond_2
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getAllowSkipAfterMilliseconds()I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 1953
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getAllowSkipAfterMilliseconds()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterMilliseconds:I

    .line 1956
    :cond_3
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownAfterMilliseconds()I

    move-result v9

    if-eq v9, v11, :cond_4

    .line 1957
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownAfterMilliseconds()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownAfterMilliseconds:I

    .line 1960
    :cond_4
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getAllowSkipAfterVideoStuckForMilliseconds()I

    move-result v9

    if-eq v9, v11, :cond_5

    .line 1961
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getAllowSkipAfterVideoStuckForMilliseconds()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowSkipAfterVideoStuckForMilliseconds:I

    .line 1964
    :cond_5
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getIconMaximumDimensionInDIP()I

    move-result v9

    if-eq v9, v11, :cond_6

    .line 1965
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getIconMaximumDimensionInDIP()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    .line 1968
    :cond_6
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getIconsDistanceFromScreenEdgeInDIP()I

    move-result v9

    if-eq v9, v11, :cond_7

    .line 1969
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getIconsDistanceFromScreenEdgeInDIP()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

    .line 1972
    :cond_7
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownMessageTextColor()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_8

    .line 1974
    :try_start_1
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownMessageTextColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageTextColor:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1980
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownMessageFormat()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1981
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getCountdownMessageFormat()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    .line 1984
    :cond_9
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getSpecialSkipCountdownMessageFormat()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1985
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getSpecialSkipCountdownMessageFormat()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    .line 1988
    :cond_a
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getErrorMessageToast()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 1989
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getErrorMessageToast()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->errorMessageToast:Ljava/lang/String;

    .line 1992
    :cond_b
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getControlsAlpha()I

    move-result v9

    if-eq v9, v11, :cond_c

    .line 1993
    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;->getControlsAlpha()I

    move-result v9

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2002
    .end local v2    # "gson":Lcom/fusepowered/nx/gson/Gson;
    .end local v8    # "videoPlayerOptions":Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;
    :cond_c
    :goto_2
    return-object v3

    .line 1898
    .restart local v1    # "forcedOrientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :pswitch_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v13, :cond_d

    .line 1899
    const/4 v9, 0x6

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1901
    :cond_d
    const/4 v9, 0x0

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1905
    :pswitch_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v13, :cond_e

    .line 1906
    const/4 v9, 0x7

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1908
    :cond_e
    iput v12, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1915
    :cond_f
    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->getAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_14

    .line 1916
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v4, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1917
    .local v4, "orientation":I
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1918
    .local v7, "rotation":I
    iget v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    .line 1919
    .local v6, "orientationToSet":I
    packed-switch v4, :pswitch_data_1

    .line 1932
    :goto_3
    iput v6, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1921
    :pswitch_2
    if-eqz v7, :cond_10

    if-ne v7, v12, :cond_11

    .line 1922
    :cond_10
    const/4 v6, 0x0

    goto :goto_3

    .line 1924
    :cond_11
    const/16 v6, 0x8

    .line 1925
    goto :goto_3

    .line 1927
    :pswitch_3
    if-eqz v7, :cond_12

    const/4 v9, 0x3

    if-ne v7, v9, :cond_13

    .line 1928
    :cond_12
    const/4 v6, 0x1

    goto :goto_3

    .line 1930
    :cond_13
    const/16 v6, 0x9

    goto :goto_3

    .line 1934
    .end local v4    # "orientation":I
    .end local v6    # "orientationToSet":I
    .end local v7    # "rotation":I
    :cond_14
    iget v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    iput v9, v3, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    goto/16 :goto_0

    .line 1997
    .end local v1    # "forcedOrientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in parsing video options JSON. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1975
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "gson":Lcom/fusepowered/nx/gson/Gson;
    .restart local v8    # "videoPlayerOptions":Lcom/fusepowered/nx/monetization/mraid/objects/VideoPlayerOptions;
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 1896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1919
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getWillCloseAdOnRedirect()Z
    .locals 1

    .prologue
    .line 1860
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    return v0
.end method

.method hideCloseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 274
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdCached()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    return v0
.end method

.method isAdExpired()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    return v0
.end method

.method isAdLoaded()Z
    .locals 1

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    return v0
.end method

.method public isAdPending()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsPending:Z

    return v0
.end method

.method isAttachedTo(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 635
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSecondPartWebView(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p1, "mraidWebView"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v0, p1, :cond_0

    .line 1658
    const/4 v0, 0x1

    .line 1660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoAutoPlay()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    return v0
.end method

.method public loadAdUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-nez v1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 530
    const-string v1, "Container not attached to activity, could not load the ad"

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 549
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->createWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .line 534
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 536
    sget v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    if-nez v1, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v1

    sput v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;)V

    .line 541
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 546
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 547
    const-string v1, "Unable to create WebView"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method loadData(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1675
    packed-switch p1, :pswitch_data_0

    .line 1687
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v1, "Error while downloading the ad"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1688
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 1691
    :goto_0
    return-void

    .line 1677
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadDownloadedData()V

    goto :goto_0

    .line 1681
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadDownloadedData()V

    goto :goto_0

    .line 1675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method makeContainerInvisible()V
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1832
    :cond_0
    return-void
.end method

.method makeContainerInvisibleForVideoAutoPlay()V
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isVideoAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->makeContainerInvisible()V

    .line 1826
    :cond_0
    return-void
.end method

.method makeContainerVisible()V
    .locals 1

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->clearAllAlphaAnimations()V

    .line 1839
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1840
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 394
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 395
    :cond_0
    const-string v1, "Attached to window"

    invoke-static {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 396
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAdCancel(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 397
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    .line 398
    .local v0, "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;->showDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 400
    .end local v0    # "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    :cond_1
    iget-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 410
    :cond_3
    :goto_1
    return-void

    .line 404
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeOrientation()V

    .line 406
    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->BEFORE_DISPLAY:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Before Ad is displayed"

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 415
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :try_start_0
    const-string v2, "Detached from window"

    invoke-static {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 418
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAdDelayed(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 419
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    .line 420
    .local v1, "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v1    # "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception caught while detaching from window. Probably already detached"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 565
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v2

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v3, v4, :cond_4

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 571
    .local v0, "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v0, v3, :cond_3

    .line 573
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 574
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 580
    .end local v0    # "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    .line 581
    .local v1, "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 584
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->USER_TOUCH:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "The user touched the banner"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 586
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 590
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 670
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 671
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 672
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->validateCustomPosition(Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 674
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_4

    .line 675
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/fusepowered/nx/monetization/enums/BannerPosition;->calculateSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 684
    .local v0, "adPosition":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$5;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 704
    iget-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    if-eqz v1, :cond_1

    .line 705
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 708
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_5

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 717
    :goto_2
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;->setCurrentPosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    invoke-virtual {p0, v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setCurrentPosition(Z)V

    .line 721
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_3
    return-void

    .line 677
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 678
    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 680
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 681
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 686
    :pswitch_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 687
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setCloseRegionPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 691
    :pswitch_1
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 692
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 696
    :pswitch_2
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 697
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 698
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 715
    :cond_5
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_2

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 804
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_3

    .line 805
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v3

    .line 806
    .local v3, "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    if-eqz v3, :cond_2

    .line 807
    const/4 v5, 0x0

    .line 808
    .local v5, "widthSpec":I
    const/4 v2, 0x0

    .line 810
    .local v2, "heightSpec":I
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v6, v7, :cond_6

    .line 811
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 812
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 828
    :cond_1
    :goto_0
    invoke-virtual {v3, v5, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->measure(II)V

    .line 830
    .end local v2    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_2
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    sget v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sget v8, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 833
    .end local v3    # "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 834
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 836
    .local v1, "height":I
    iget v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    if-ne v6, v4, :cond_4

    iget v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    if-eq v6, v1, :cond_5

    .line 837
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 838
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    int-to-float v7, v1

    invoke-static {v7}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->setHeight(Ljava/lang/Integer;)V

    .line 839
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    int-to-float v7, v4

    invoke-static {v7}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;->setWidth(Ljava/lang/Integer;)V

    .line 840
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setSizes()V

    .line 842
    :cond_5
    iput v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 843
    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 844
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 845
    .restart local v5    # "widthSpec":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 846
    .restart local v2    # "heightSpec":I
    invoke-super {p0, v5, v2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 848
    return-void

    .line 813
    .end local v1    # "height":I
    .end local v4    # "width":I
    .restart local v3    # "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :cond_6
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v6, v7, :cond_7

    .line 814
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    iget-object v7, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 815
    .local v0, "adPosition":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 816
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 818
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_7
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    if-eqz v6, :cond_8

    .line 819
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {v6, v10, v10, v7, v8}, Lcom/fusepowered/nx/monetization/enums/BannerPosition;->calculateSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 823
    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_1

    .line 824
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 825
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto/16 :goto_0

    .line 821
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_8
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    iget-object v7, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public onMraidLoaded()V
    .locals 2

    .prologue
    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 1227
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPageSize()V

    .line 1228
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setMraidLoaded()V

    .line 1229
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 1230
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setDeviceFeatures()V

    .line 1231
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setNativeVideoFeatures()V

    .line 1232
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setSizes()V

    .line 1233
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setPlacementType()V

    .line 1234
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1235
    return-void
.end method

.method onPageFinished()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1378
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1379
    .local v0, "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    if-nez v0, :cond_0

    .line 1380
    const-string v2, "WebView reference lost"

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1381
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 1439
    .end local v0    # "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :goto_0
    return-void

    .line 1384
    .restart local v0    # "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->isAdLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v0, v2, :cond_2

    .line 1386
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setDefaultPosition()V

    .line 1387
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setCurrentPosition()V

    .line 1388
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1389
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 1390
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getPageSize()V

    .line 1401
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 1402
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setAdLoaded()V

    .line 1403
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 1404
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;->READY:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireEvent(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;)V

    .line 1405
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->FETCHED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Ad finished downloading"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1406
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1407
    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    if-nez v2, :cond_7

    .line 1409
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->BEFORE_DISPLAY:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Before Ad is displayed"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1410
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_6

    .line 1411
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1412
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 1413
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->createDialog()Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 1414
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->show()V

    .line 1429
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1430
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 1434
    :goto_3
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1435
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1436
    .end local v0    # "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1391
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v0, v2, :cond_3

    .line 1392
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1393
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setCurrentPosition()V

    .line 1394
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 1395
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    goto :goto_1

    .line 1397
    :cond_3
    const-string v2, "Invalid WebView loaded"

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1398
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto/16 :goto_0

    .line 1415
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/fusepowered/nx/monetization/activities/InterstitialActivity;

    if-eqz v2, :cond_5

    .line 1416
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    goto :goto_2

    .line 1418
    :cond_5
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/fusepowered/nx/monetization/manager/ActivityManager;->startMRAIDInterstitial(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1421
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_2

    .line 1424
    :cond_7
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1425
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_2

    .line 1432
    :cond_8
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 605
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 624
    :goto_0
    return v1

    .line 609
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 610
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_2

    .line 615
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 619
    .local v0, "webView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 624
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1490
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p0}, Lcom/fusepowered/nx/monetization/manager/ActivityManager;->startMRAIDVideo(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :goto_0
    return-void

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method prepareVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1790
    invoke-static {}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->getInstance()Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/nx/common/Log;->isLogging()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->prepare(Ljava/lang/String;Z)Z

    .line 1791
    return-void
.end method

.method public declared-synchronized registerCallId(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1711
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CALL_RECEIVED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 1712
    .local v0, "instance":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    monitor-exit p0

    return-void

    .line 1711
    .end local v0    # "instance":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method registerEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/enums/AdEvent;

    .prologue
    .line 1756
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/enums/AdEvent;->getEventLevel()I

    move-result v0

    iget v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 1757
    return-void
.end method

.method releaseWithCloseAnimation()V
    .locals 4

    .prologue
    .line 935
    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->released:Z

    if-eqz v2, :cond_0

    .line 985
    :goto_0
    return-void

    .line 939
    :cond_0
    move-object v0, p0

    .line 940
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :try_start_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    new-instance v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;

    invoke-direct {v3, p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 981
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->getInstance()Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v2

    goto :goto_0

    .line 975
    :catch_1
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to release ad"

    invoke-static {p0, v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public reload()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1619
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v3, v4, :cond_1

    :cond_0
    move v1, v2

    .line 1642
    :goto_0
    return v1

    .line 1622
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v3, v4, :cond_2

    .line 1623
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 1624
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 1626
    :cond_2
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1627
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1628
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 1629
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1630
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-eqz v3, :cond_3

    .line 1631
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1633
    :cond_3
    new-instance v3, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    invoke-direct {v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;-><init>()V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    .line 1634
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 1635
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 1636
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    .line 1637
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while reloading the ad"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 1642
    goto :goto_0
.end method

.method resize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1123
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_1

    .line 1124
    const-string v2, "Ad is interstitial"

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v2, v3, :cond_2

    .line 1128
    const-string v1, "WebView is expanded, cannot resize"

    .line 1129
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 1130
    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v6, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isResizePropertiesValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setClosePosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;)V

    .line 1135
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->maxSize:Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->getPositionRect(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 1136
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 1137
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->RESIZED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "The ad was resized"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 1139
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bringToFront()V

    .line 1140
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1141
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1142
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 4
    .param p1, "instance"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1357
    .local v0, "commandWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->post(Ljava/lang/Runnable;)Z

    .line 1374
    .end local v0    # "commandWebView":Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    :goto_0
    return-void

    .line 1372
    :cond_0
    const-string v1, "WebView reference lost"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->getCommand()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public sendLoadDataMessage(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V
    .locals 4
    .param p1, "wv"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    const/4 v1, 0x0

    .line 1669
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->webView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    if-ne v2, p1, :cond_0

    move v0, v1

    .line 1670
    .local v0, "index":I
    :goto_0
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1671
    return-void

    .line 1669
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 630
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    .line 631
    return-void
.end method

.method setAdCached(Z)V
    .locals 2
    .param p1, "isCached"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 203
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->createDialog()Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .line 206
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->dialog:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->show()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method setAdExpired(Z)V
    .locals 0
    .param p1, "isExpired"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 221
    return-void
.end method

.method setAdInfo(Lcom/fusepowered/nx/monetization/mraid/AdInfo;)V
    .locals 0
    .param p1, "adInfo"    # Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    .line 1784
    return-void
.end method

.method public setAdName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adInfo:Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->setPlacement(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setAdPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 651
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->setCustomPosition(Landroid/graphics/Rect;)V

    .line 652
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 653
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 654
    return-void
.end method

.method public setBannerPosition(Lcom/fusepowered/nx/monetization/enums/BannerPosition;)V
    .locals 2
    .param p1, "bannerPosition"    # Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .prologue
    .line 1774
    if-eqz p1, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->position:Lcom/fusepowered/nx/monetization/mraid/AdPosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->setCustomPosition(Landroid/graphics/Rect;)V

    .line 1777
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    .line 1778
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1779
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1780
    return-void
.end method

.method setClosePosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    if-eq v0, p1, :cond_0

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePosition:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 557
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeCloseIndicatorBackground()V

    .line 560
    :cond_1
    return-void
.end method

.method setCurrentPosition()V
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setCurrentPosition(Z)V

    .line 1461
    return-void
.end method

.method setCurrentPosition(Z)V
    .locals 3
    .param p1, "resetPosition"    # Z

    .prologue
    .line 1466
    if-eqz p1, :cond_0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;->setCurrentPosition(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    .line 1469
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setCurrentPosition(Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method setExpandProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;)V
    .locals 0
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    .line 1296
    return-void
.end method

.method setIsVideoAutoPlay(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 1797
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoAutoPlay:Z

    .line 1798
    return-void
.end method

.method setIsViewable(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 1484
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setIsViewable(Z)V

    .line 1485
    return-void

    .line 1484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMD5ListUsed(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "mD5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->md5usedInThisAd:Ljava/util/Set;

    .line 389
    return-void
.end method

.method public setOnRichMediaEventListener(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .line 1762
    return-void
.end method

.method setOrientationProperties(Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;)V
    .locals 2
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    .line 1328
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-ne v0, v1, :cond_1

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeOrientation()V

    .line 1331
    :cond_1
    return-void
.end method

.method setPageSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1243
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1245
    :cond_0
    return-void
.end method

.method public setPlacementType(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 1
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->placementType:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 371
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne p1, v0, :cond_0

    .line 372
    sget v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 377
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method setResizeProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;)V
    .locals 0
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    .line 1301
    return-void
.end method

.method setVideoOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoOptions"    # Ljava/lang/String;

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    .line 1852
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->videoOptionsJSON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->checkForAutoPlay(Ljava/lang/String;)V

    .line 1853
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 1696
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1697
    if-nez p1, :cond_0

    .line 1698
    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    if-nez v2, :cond_0

    .line 1699
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 1700
    sget-object v2, Lcom/fusepowered/nx/monetization/enums/AdEvent;->DISPLAYED:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v3, "Ad displayed"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1703
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1704
    .local v0, "currentWebView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1705
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setIsViewable(Z)V

    .line 1707
    :cond_1
    return-void

    .line 1705
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setWillCloseAdOnRedirect(Z)V
    .locals 0
    .param p1, "willClose"    # Z

    .prologue
    .line 1856
    iput-boolean p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->willCloseAdOnRedirect:Z

    .line 1857
    return-void
.end method

.method shouldReleaseWithCloseAnimation(Z)V
    .locals 0
    .param p1, "closeAnimation"    # Z

    .prologue
    .line 927
    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->release()V

    goto :goto_0
.end method

.method showCloseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->changeCloseIndicatorBackground()V

    .line 283
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 284
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    goto :goto_0
.end method

.method showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsResult;
    .param p4, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 1589
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;->createJSDialogWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :goto_0
    return-void

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create JS dialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method storePicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1598
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->STORE_PICTURE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;->createStorePictureWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method trackClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1653
    return-void
.end method

.method trackVideo(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->trackVideo(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V

    .line 1647
    return-void
.end method

.method useCustomClose(Z)V
    .locals 2
    .param p1, "useCustomClose"    # Z

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1499
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v0, v1, :cond_0

    .line 1500
    if-eqz p1, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->state:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v0, v1, :cond_0

    .line 1503
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    goto :goto_0
.end method

.method public workerDone(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;)V
    .locals 2
    .param p1, "worker"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;

    .prologue
    .line 1609
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1610
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :goto_0
    return-void

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to release a worker"

    invoke-static {p0, v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
