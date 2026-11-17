.class public Lcom/fusepowered/m2/mobileads/VastCompanionAd;
.super Ljava/lang/Object;
.source "VastCompanionAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mClickThroughUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mClickTrackers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCreativeViewTrackers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mVastResource:Lcom/fusepowered/m2/mobileads/VastResource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(IILcom/fusepowered/m2/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "vastResource"    # Lcom/fusepowered/m2/mobileads/VastResource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "clickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/fusepowered/m2/mobileads/VastResource;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    .local p6, "creativeViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p3}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p5, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v0, "creativeViewTrackers cannot be null"

    invoke-static {p6, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput p1, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mWidth:I

    .line 44
    iput p2, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mHeight:I

    .line 45
    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mVastResource:Lcom/fusepowered/m2/mobileads/VastResource;

    .line 46
    iput-object p4, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickThroughUrl:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickTrackers:Ljava/util/List;

    .line 48
    iput-object p6, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mCreativeViewTrackers:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    return-void
.end method

.method public addCreativeViewTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "creativeViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    const-string v0, "creativeViewTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mCreativeViewTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-void
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getCreativeViewTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mCreativeViewTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mHeight:I

    return v0
.end method

.method public getVastResource()Lcom/fusepowered/m2/mobileads/VastResource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mVastResource:Lcom/fusepowered/m2/mobileads/VastResource;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mWidth:I

    return v0
.end method

.method handleClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "webViewClickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    instance-of v1, p1, Landroid/app/Activity;

    const-string v2, "context must be an activity"

    invoke-static {v1, v2}, Lcom/fusepowered/m2/common/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mVastResource:Lcom/fusepowered/m2/mobileads/VastResource;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mClickThroughUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/fusepowered/m2/mobileads/VastResource;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "correctClickThroughUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/common/UrlHandler$Builder;

    invoke-direct {v1}, Lcom/fusepowered/m2/common/UrlHandler$Builder;-><init>()V

    sget-object v2, Lcom/fusepowered/m2/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/fusepowered/m2/common/UrlAction;

    const/4 v4, 0x0

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->OPEN_APP_MARKET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/fusepowered/m2/common/UrlAction;[Lcom/fusepowered/m2/common/UrlAction;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd$1;-><init>(Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withResultActions(Lcom/fusepowered/m2/common/UrlHandler$ResultActions;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->build()Lcom/fusepowered/m2/common/UrlHandler;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleImpression(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->mCreativeViewTrackers:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1, v2, p1}, Lcom/fusepowered/m2/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/fusepowered/m2/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    return-void
.end method
