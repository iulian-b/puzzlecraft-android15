.class public Lcom/fusepowered/ac/AdColonyInterstitialAd;
.super Lcom/fusepowered/ac/AdColonyAd;
.source "SourceFile"


# instance fields
.field s:Lcom/fusepowered/ac/AdColonyAdListener;

.field t:Lcom/fusepowered/ac/AdColonyNativeAdListener;

.field u:Lcom/fusepowered/ac/AdColonyNativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fusepowered/ac/AdColonyAd;-><init>()V

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ac/a;->u:Z

    .line 30
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 31
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/ac/AdColonyAd;-><init>()V

    .line 38
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 39
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 41
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 130
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 139
    :cond_0
    :goto_0
    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 140
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 143
    sget-boolean v0, Lcom/fusepowered/ac/a;->u:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/fusepowered/ac/ACBActivity;->B:Z

    if-nez v0, :cond_3

    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->t:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->t:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->u:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-interface {v0, v2, v1}, Lcom/fusepowered/ac/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/fusepowered/ac/AdColonyNativeAdView;)V

    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    .line 150
    sput-boolean v2, Lcom/fusepowered/ac/a;->v:Z

    .line 151
    return-void
.end method

.method a(Z)Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0}, Lcom/fusepowered/ac/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/d;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/16 v1, 0xc

    sput v1, Lcom/fusepowered/ac/a;->Y:I

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/d;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput v2, Lcom/fusepowered/ac/a;->Y:I

    .line 82
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 83
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/fusepowered/ac/AdColonyInterstitialAd$1;

    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/ac/AdColonyInterstitialAd$1;-><init>(Lcom/fusepowered/ac/AdColonyInterstitialAd;Lcom/fusepowered/ac/d;)V

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->f:I

    .line 95
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;

    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;-><init>(Lcom/fusepowered/ac/AdColonyInterstitialAd;Lcom/fusepowered/ac/d;)V

    .line 108
    sput-boolean v2, Lcom/fusepowered/ac/a;->v:Z

    .line 109
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->c()Z

    .line 110
    sput-object p0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 112
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->b(Lcom/fusepowered/ac/AdColonyInterstitialAd;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 115
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ac/AdColonyAdListener;->onAdColonyAdStarted(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 124
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->f:I

    goto :goto_0
.end method

.method public withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyInterstitialAd;
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ac/AdColonyAdListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    .line 50
    return-object p0
.end method
