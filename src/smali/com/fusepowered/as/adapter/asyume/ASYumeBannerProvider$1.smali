.class Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;
.super Ljava/lang/Object;
.source "ASYumeBannerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    new-instance v1, Lcom/yume/android/sdk/banner/YuMeAdView;

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yume/android/sdk/banner/YuMeAdView;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v0, "/6253334/dfp_example_ad/banner"

    iput-object v0, v1, Lcom/yume/android/sdk/banner/YuMeAdView;->domainId:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/yume/android/sdk/banner/YuMeBannerProvider;->DFP:Lcom/yume/android/sdk/banner/YuMeBannerProvider;

    iput-object v0, v1, Lcom/yume/android/sdk/banner/YuMeAdView;->eBannerProvider:Lcom/yume/android/sdk/banner/YuMeBannerProvider;

    .line 78
    sget-object v0, Lcom/yume/android/sdk/banner/YuMeBannerType;->INLINE:Lcom/yume/android/sdk/banner/YuMeBannerType;

    iput-object v0, v1, Lcom/yume/android/sdk/banner/YuMeAdView;->eBannerType:Lcom/yume/android/sdk/banner/YuMeBannerType;

    .line 79
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, v1, Lcom/yume/android/sdk/banner/YuMeAdView;->activity:Landroid/app/Activity;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    sget-object v2, Lcom/yume/android/sdk/banner/YuMeAdSize;->SMART_BANNER:Lcom/yume/android/sdk/banner/YuMeAdSize;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iput-object v0, v1, Lcom/yume/android/sdk/banner/YuMeAdView;->eAdSizeList:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/AerServBanner;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/AerServBanner;->addView(Landroid/view/View;)V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 87
    invoke-virtual {v1}, Lcom/yume/android/sdk/banner/YuMeAdView;->YuMeSDK_LoadDFPAd()V

    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V
    :try_end_0
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error loading yume sdk2sdk2"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
