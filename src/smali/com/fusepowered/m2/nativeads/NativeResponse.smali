.class public Lcom/fusepowered/m2/nativeads/NativeResponse;
.super Ljava/lang/Object;
.source "NativeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;,
        Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    }
.end annotation


# instance fields
.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mImageLoader:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsClicked:Z

.field private mIsDestroyed:Z

.field private final mMoPubClickTracker:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMoPubImpressionTrackers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecordedImpression:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/NativeAdInterface;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "impressionUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clickUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "nativeAd"    # Lcom/fusepowered/m2/nativeads/NativeAdInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "moPubNativeEventListener"    # Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    .line 106
    iput-object p4, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mAdUnitId:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 108
    iput-object p5, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    new-instance v1, Lcom/fusepowered/m2/nativeads/NativeResponse$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/nativeads/NativeResponse$1;-><init>(Lcom/fusepowered/m2/nativeads/NativeResponse;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->setNativeEventListener(Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$NativeEventListener;)V

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    .line 122
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/fusepowered/m2/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mImageLoader:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    .line 125
    return-void
.end method

.method private loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    if-nez p2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 325
    :cond_0
    if-nez p1, :cond_1

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mImageLoader:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/fusepowered/m2/nativeads/NativeResponse$2;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/m2/nativeads/NativeResponse$2;-><init>(Lcom/fusepowered/m2/nativeads/NativeResponse;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/m2/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageListener;)Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method private openClickDestinationUrl(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 362
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "spinningProgressView":Lcom/fusepowered/m2/nativeads/SpinningProgressView;
    if-eqz p1, :cond_1

    .line 354
    new-instance v0, Lcom/fusepowered/m2/nativeads/SpinningProgressView;

    .end local v0    # "spinningProgressView":Lcom/fusepowered/m2/nativeads/SpinningProgressView;
    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/fusepowered/m2/nativeads/SpinningProgressView;-><init>(Landroid/content/Context;)V

    .line 355
    .restart local v0    # "spinningProgressView":Lcom/fusepowered/m2/nativeads/SpinningProgressView;
    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/SpinningProgressView;->addToRoot(Landroid/view/View;)Z

    .line 358
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 359
    .local v1, "urlIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;-><init>(Landroid/content/Context;Ljava/util/Iterator;Lcom/fusepowered/m2/nativeads/SpinningProgressView;)V

    .line 361
    .local v2, "urlResolutionListener":Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;)V

    goto :goto_0
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 368
    check-cast v1, Landroid/view/ViewGroup;

    .line 369
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 370
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->clear(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/nativeads/MoPubNative;->EMPTY_EVENT_LISTENER:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 287
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->destroy()V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mIsDestroyed:Z

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickDestinationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickTracker()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getImpressionMinPercentageViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getImpressionMinTimeViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v0, "allImpressionTrackers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getImpressionTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMoPubNativeEventListener()Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    return-object v0
.end method

.method public getRecordedImpression()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mRecordedImpression:Z

    return v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/fusepowered/m2/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/fusepowered/m2/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->openClickDestinationUrl(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->handleClick(Landroid/view/View;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mIsClicked:Z

    .line 271
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mIsClicked:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mIsDestroyed:Z

    return v0
.end method

.method public isOverridingClickTracker()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->isOverridingClickTracker()Z

    move-result v0

    return v0
.end method

.method public isOverridingImpressionTracker()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->isOverridingImpressionTracker()Z

    move-result v0

    return v0
.end method

.method public loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 303
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 305
    :cond_0
    return-void
.end method

.method public loadIconImage(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 298
    return-void
.end method

.method public loadMainImage(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 294
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isOverridingClickTracker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;-><init>(Lcom/fusepowered/m2/nativeads/NativeResponse;)V

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->prepare(Landroid/view/View;)V

    goto :goto_0
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getRecordedImpression()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "impressionTracker":Ljava/lang/String;
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/fusepowered/m2/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/fusepowered/m2/common/event/BaseEvent$Name;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/fusepowered/m2/common/event/BaseEvent$Name;)V

    goto :goto_1

    .line 251
    .end local v1    # "impressionTracker":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mNativeAd:Lcom/fusepowered/m2/nativeads/NativeAdInterface;

    invoke-interface {v2}, Lcom/fusepowered/m2/nativeads/NativeAdInterface;->recordImpression()V

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mRecordedImpression:Z

    .line 254
    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubNativeEventListener:Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v2, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeImpression(Landroid/view/View;)V

    goto :goto_0
.end method

.method setRecordedImpression(Z)V
    .locals 0
    .param p1, "recordedImpression"    # Z
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mRecordedImpression:Z

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TITLE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TEXT:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getStarRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mMoPubClickTracker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    iget-object v1, v1, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "recordedImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/m2/nativeads/NativeResponse;->mRecordedImpression:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
