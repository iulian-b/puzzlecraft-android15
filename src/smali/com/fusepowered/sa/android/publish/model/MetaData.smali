.class public Lcom/fusepowered/sa/android/publish/model/MetaData;
.super Lcom/fusepowered/sa/android/publish/model/BaseResponse;


# static fields
.field public static final DEFAULT_AD_CACHE_TTL:J = 0x2a300L

.field public static final DEFAULT_AD_CLICK_URL:Ljava/lang/String; = "http://www.startappexchange.com/tracking/adClick"

.field public static final DEFAULT_BG_BOTTOM:I = -0xdededf

.field public static final DEFAULT_BG_TOP:I = -0xdededf

.field public static final DEFAULT_DISABLE_RETURN_AD:Z = false

.field public static final DEFAULT_FULLSCREEN_OVERLAY_PROBABILITY:I = 0x32

.field public static final DEFAULT_HOME_PROBABILITY_3D:I = 0x50

.field public static final DEFAULT_HTML_3D_PROBABILITY_3D:I = 0x32

.field public static final DEFAULT_MAX_ADS:I = 0xa

.field public static final DEFAULT_METADATA_TTL:J = 0x15180L

.field public static final DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

.field public static final DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_PROBABILITY_3D:I = 0x50

.field public static final DEFAULT_RETURN_AD_MIN_BACKGROUND_TIME:J = 0x12cL

.field public static final DEFAULT_TITLE_BG:I = -0xe1e1e2

.field public static final DEFAULT_TITLE_CONTENT:Ljava/lang/String; = "Free Apps of the day"

.field public static final DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

.field public static final KEY_METADATA:Ljava/lang/String; = "metaData"

.field public static final TEXT_DECORATION_BOLD:Ljava/lang/String; = "BOLD"

.field public static final TEXT_DECORATION_ITALIC:Ljava/lang/String; = "ITALIC"

.field public static final TEXT_DECORATION_UNDERLINE:Ljava/lang/String; = "UNDERLINE"

.field private static transient instance:Lcom/fusepowered/sa/android/publish/model/MetaData; = null

.field private static transient lock:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x6c7b882c28b6e5abL


# instance fields
.field private AdInformation:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

.field private BannerOptions:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

.field private SplashConfig:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

.field private adCacheTTL:J

.field private adClickURL:Ljava/lang/String;

.field private backgroundGradientBottom:Ljava/lang/Integer;

.field private backgroundGradientTop:Ljava/lang/Integer;

.field private disableReturnAd:Z

.field private fullpageOfferWallProbability:Ljava/lang/Integer;

.field private fullpageOverlayProbability:Ljava/lang/Integer;

.field private homeProbability3D:Ljava/lang/Integer;

.field private itemDescriptionTextColor:Ljava/lang/Integer;

.field private itemDescriptionTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemDescriptionTextSize:Ljava/lang/Integer;

.field private itemGradientBottom:Ljava/lang/Integer;

.field private itemGradientTop:Ljava/lang/Integer;

.field private itemTitleTextColor:Ljava/lang/Integer;

.field private itemTitleTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemTitleTextSize:Ljava/lang/Integer;

.field private lastUpdate:J

.field private transient loading:Z

.field private maxAds:Ljava/lang/Integer;

.field private transient metaDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/c/p;",
            ">;"
        }
    .end annotation
.end field

.field private metaDataTTL:Ljava/lang/Long;

.field private poweredByBackgroundColor:Ljava/lang/Integer;

.field private poweredByTextColor:Ljava/lang/Integer;

.field private probability3D:Ljava/lang/Integer;

.field private returnAdMinBackgroundTime:J

.field private templates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;",
            ">;"
        }
    .end annotation
.end field

.field private titleBackgroundColor:Ljava/lang/Integer;

.field private titleContent:Ljava/lang/String;

.field private titleLineColor:Ljava/lang/Integer;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleTextSize:Ljava/lang/Integer;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->instance:Lcom/fusepowered/sa/android/publish/model/MetaData;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BOLD"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

    const v0, -0xe1e1e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/16 v4, 0x50

    const/16 v3, 0x32

    const/4 v2, 0x0

    const v1, -0xdededf

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/model/BaseResponse;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->probability3D:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->homeProbability3D:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->fullpageOfferWallProbability:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->fullpageOverlayProbability:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->backgroundGradientTop:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->backgroundGradientBottom:Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->maxAds:Ljava/lang/Integer;

    const v0, -0xe1e1e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleBackgroundColor:Ljava/lang/Integer;

    const-string v0, "Free Apps of the day"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleContent:Ljava/lang/String;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextSize:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextColor:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextDecoration:Ljava/util/Set;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleLineColor:Ljava/lang/Integer;

    const v0, -0xd5d6c7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemGradientTop:Ljava/lang/Integer;

    const v0, -0x858477

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemGradientBottom:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextSize:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextColor:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextDecoration:Ljava/util/Set;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextSize:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextColor:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextDecoration:Ljava/util/Set;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->BannerOptions:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->templates:Ljava/util/HashMap;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->poweredByBackgroundColor:Ljava/lang/Integer;

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->poweredByTextColor:Ljava/lang/Integer;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->SplashConfig:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->AdInformation:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    const-string v0, "http://www.startappexchange.com/tracking/adClick"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->adClickURL:Ljava/lang/String;

    const-wide/32 v0, 0x15180

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataTTL:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->version:Ljava/lang/String;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->returnAdMinBackgroundTime:J

    const-wide/32 v0, 0x2a300

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->adCacheTTL:J

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->disableReturnAd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->lastUpdate:J

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->loading:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->f()V

    return-void
.end method

.method public static failedLoading()V
    .locals 3

    sget-object v1, Lcom/fusepowered/sa/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/c/p;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c/p;->onFailedLoadingMeta()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->loading:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->instance:Lcom/fusepowered/sa/android/publish/model/MetaData;

    return-object v0
.end method

.method public static getLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.fusepowered.sa.android.publish"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/gson/Gson;-><init>()V

    const-string v2, "metaData"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/sa/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/MetaData;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->instance:Lcom/fusepowered/sa/android/publish/model/MetaData;

    :goto_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->f()V

    return-void

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/model/MetaData;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->instance:Lcom/fusepowered/sa/android/publish/model/MetaData;

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/MetaData;)V
    .locals 4

    sget-object v1, Lcom/fusepowered/sa/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    iput-object v0, p1, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    sput-object p1, Lcom/fusepowered/sa/android/publish/model/MetaData;->instance:Lcom/fusepowered/sa/android/publish/model/MetaData;

    sget-object v0, Lcom/fusepowered/sa/android/publish/b;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v2, "MetaData received:"

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    new-instance v2, Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/sa/android/publish/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/fusepowered/sa/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->AdInformation:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->lastUpdate:J

    const-string v0, "com.fusepowered.sa.android.publish"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/sa/android/publish/gson/Gson;-><init>()V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "metaData"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x3

    const-string v3, "MetaData saved:"

    invoke-static {v0, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->f()V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/c/p;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c/p;->onFinishLoadingMeta()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/fusepowered/sa/android/publish/model/MetaData;->loading:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public addMetaDataListener(Lcom/fusepowered/sa/android/publish/c/p;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdCacheTtl()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->adCacheTTL:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->adClickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->AdInformation:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    return-object v0
.end method

.method public getBackgroundGradientBottom()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->backgroundGradientBottom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBackgroundGradientTop()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->backgroundGradientTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->BannerOptions:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method public getFullscreenOverlayProbability()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->fullpageOverlayProbability:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHomeProbability3D()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->homeProbability3D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHtml3DProbability()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->fullpageOfferWallProbability:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemDescriptionTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemDescriptionTextDecoration()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getItemDescriptionTextSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemDescriptionTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemGradientBottom()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemGradientBottom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemGradientTop()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemGradientTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemTitleTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemTitleTextDecoration()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getItemTitleTextSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->itemTitleTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxAds()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->maxAds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPoweredByBackgroundColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->poweredByBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPoweredByTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->poweredByTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProbability3D()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->probability3D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReturnAdMinBackgroundTime()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->returnAdMinBackgroundTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplashConfig()Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->SplashConfig:Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->templates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;

    return-object v0
.end method

.method public getTitleBackgroundColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLineColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleLineColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleTextDecoration()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getTitleTextSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->titleTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDisableReturnAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->disableReturnAd:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->loading:Z

    return v0
.end method

.method public isReady()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->lastUpdate:J

    sub-long/2addr v4, v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->metaDataTTL:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/o;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public loadFromServer(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;ZLcom/fusepowered/sa/android/publish/c/p;)V
    .locals 2

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/fusepowered/sa/android/publish/c/p;->onFinishLoadingMeta()V

    :cond_0
    sget-object v1, Lcom/fusepowered/sa/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->loading:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/h;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/h;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/h;->a()V

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/fusepowered/sa/android/publish/model/MetaData;->addMetaDataListener(Lcom/fusepowered/sa/android/publish/c/p;)V

    :cond_2
    monitor-exit v1

    :cond_3
    :goto_0
    return-void

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/fusepowered/sa/android/publish/c/p;->onFinishLoadingMeta()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/MetaData;->version:Ljava/lang/String;

    return-void
.end method
