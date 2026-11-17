.class public Lcom/fusepowered/ads/adapters/VastAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "VastAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;


# static fields
.field public static final NAME:Ljava/lang/String; = "VAST"

.field private static final TAG:Ljava/lang/String; = "VastAdAdapter"


# instance fields
.field private activity:Landroid/app/Activity;

.field private interstitial:Lcom/fusepowered/vast/VASTPlayer;

.field private isUrl:Z

.field private postroll:Z

.field private xmlContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isVast:Z

    .line 36
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/vast/VASTPlayer;->play()V

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VAST"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    invoke-virtual {v1}, Lcom/fusepowered/vast/VASTPlayer;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 104
    .local v0, "isAvailable":Z
    :goto_0
    return v0

    .line 103
    .end local v0    # "isAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 81
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 80
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 86
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    .line 98
    :goto_0
    return v0

    .line 89
    :cond_1
    iput-object v10, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 90
    new-instance v0, Lcom/fusepowered/vast/VASTPlayer;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->postroll:Z

    iget-wide v4, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->closeButtonDelay:J

    iget-boolean v6, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isRewarded:Z

    iget-object v7, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->maxVastFileSize:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->shouldValidateSchema:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/fusepowered/vast/VASTPlayer;-><init>(Landroid/content/Context;Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;ZJZLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    .line 91
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isUrl:Z

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/VASTPlayer;->loadVastResponseViaXML(Ljava/lang/String;)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->activity:Landroid/app/Activity;

    const-string v1, "Caching..."

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    iput-object v10, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->interstitial:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/VASTPlayer;->loadVastResponseViaURL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->activity:Landroid/app/Activity;

    .line 49
    :cond_0
    if-nez p2, :cond_2

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    const-string v8, "script"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, "encodedContent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "xmlContent":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 58
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v5, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "xmlContent":Ljava/lang/String;
    .local v5, "xmlContent":Ljava/lang/String;
    move-object v4, v5

    .line 64
    .end local v5    # "xmlContent":Ljava/lang/String;
    .restart local v4    # "xmlContent":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v8, "postroll"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "pr":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    iput-boolean v6, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->postroll:Z

    .line 66
    if-eqz v4, :cond_1

    .line 68
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "url":Ljava/net/URL;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isUrl:Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v3    # "url":Ljava/net/URL;
    :goto_3
    iput-object v4, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->xmlContent:Ljava/lang/String;

    goto :goto_0

    .line 59
    .end local v2    # "pr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "VastAdAdapter"

    const-string v9, "Couldn\'t decode encoded xml string"

    invoke-static {v8, v9, v0}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "pr":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 65
    goto :goto_2

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/net/MalformedURLException;
    iput-boolean v7, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->isUrl:Z

    goto :goto_3
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public vastClick()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 228
    return-void
.end method

.method public vastComplete()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 234
    return-void
.end method

.method public vastDismiss()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 240
    return-void
.end method

.method public vastDisplay()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 222
    return-void
.end method

.method public vastError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 142
    const-string v0, "VastAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onVastError(ILcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 144
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 146
    sparse-switch p1, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 149
    :sswitch_0
    const-string v0, "VastAdAdapter"

    const-string v1, "No connectivity detected."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 154
    :sswitch_1
    const-string v0, "VastAdAdapter"

    const-string v1, "Can\'t parse the XML."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 159
    :sswitch_2
    const-string v0, "VastAdAdapter"

    const-string v1, "XML doesn\'t adhere to schema."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 164
    :sswitch_3
    const-string v0, "VastAdAdapter"

    const-string v1, "Version of VAST response not supported."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 169
    :sswitch_4
    const-string v0, "VastAdAdapter"

    const-string v1, "General wrapper error."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 174
    :sswitch_5
    const-string v0, "VastAdAdapter"

    const-string v1, "Timed out waiting for next VAST response."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 179
    :sswitch_6
    const-string v0, "VastAdAdapter"

    const-string v1, "There are more wrapper levels than allowed."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 184
    :sswitch_7
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t find a VAST response at the end of the wrapper."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 189
    :sswitch_8
    const-string v0, "VastAdAdapter"

    const-string v1, "General linear error. Issue with caching most likely."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 194
    :sswitch_9
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t find media file at specified URL."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto/16 :goto_0

    .line 199
    :sswitch_a
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t load media file in time."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto/16 :goto_0

    .line 204
    :sswitch_b
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t find a compatible media file to load."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto/16 :goto_0

    .line 209
    :sswitch_c
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t display loaded media file."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto/16 :goto_0

    .line 213
    :sswitch_d
    const-string v0, "VastAdAdapter"

    const-string v1, "Couldn\'t connect to impression URL"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x12e -> :sswitch_6
        0x12f -> :sswitch_7
        0x190 -> :sswitch_8
        0x191 -> :sswitch_9
        0x192 -> :sswitch_a
        0x193 -> :sswitch_b
        0x195 -> :sswitch_c
        0x384 -> :sswitch_d
    .end sparse-switch
.end method

.method public vastProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p1, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onVastProgress(ILcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 253
    return-void
.end method

.method public vastReady()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "VastAdAdapter"

    const-string v1, "Ad loaded"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 138
    return-void
.end method

.method public vastRewardedVideoComplete()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 258
    return-void
.end method

.method public vastSkip()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/VastAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onVastSkip(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 247
    return-void
.end method
