.class public Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "LeadboltAdAdapter.java"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;
    }
.end annotation


# static fields
.field private static final STATIC_LOCATION:Ljava/lang/String; = "inapp"

.field private static final TAG:Ljava/lang/String; = "LeadboltAdAdapter"

.field private static final VIDEO_LOCATION:Ljava/lang/String; = "video"

.field private static initialized:Z = false

.field private static leadboltListener:Lcom/fusepowered/ads/adapters/LeadBoltListener; = null

.field public static final name:Ljava/lang/String; = "Leadbolt"


# instance fields
.field private activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private leadboltLocation:Ljava/lang/String;

.field private state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->initialized:Z

    .line 53
    new-instance v0, Lcom/fusepowered/ads/adapters/LeadBoltListener;

    invoke-direct {v0}, Lcom/fusepowered/ads/adapters/LeadBoltListener;-><init>()V

    sput-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltListener:Lcom/fusepowered/ads/adapters/LeadBoltListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 51
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 58
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltListener:Lcom/fusepowered/ads/adapters/LeadBoltListener;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ads/adapters/LeadBoltListener;->addListener(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;)V

    .line 59
    return-void
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 125
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "Leadbolt"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapableOfLoading()Z
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, "canLoad":Z
    :goto_0
    return v0

    .line 87
    .end local v0    # "canLoad":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->isCapableOfLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v1, "LeadboltAdAdapter"

    const-string v2, "Not capable of loading"

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v3, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {v2, v3}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->canTransitionTo(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    const-string v1, "LeadboltAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load when state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {v3}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    sget-boolean v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->initialized:Z

    if-nez v0, :cond_2

    .line 105
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltListener:Lcom/fusepowered/ads/adapters/LeadBoltListener;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->setModuleListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 106
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->apiKey:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/apptracker/android/track/AppTracker;->startSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->initialized:Z

    .line 109
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 111
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 112
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public onMediaFinished(Z)V
    .locals 2
    .param p1, "didFinish"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 185
    const-string v0, "LeadboltAdAdapter"

    const-string v1, "FINISHED"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 187
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onModuleCached(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq v0, v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Available:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 169
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onModuleClicked(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq v0, v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v0, "LeadboltAdAdapter"

    const-string v1, "CLICKED"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onModuleClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq v0, v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v0, "LeadboltAdAdapter"

    const-string v1, "CLOSED"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "isCache"    # Z

    .prologue
    .line 214
    const-string v0, "LeadboltAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Loading:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne v0, v1, :cond_2

    .line 219
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 220
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne v0, v1, :cond_0

    .line 222
    :cond_3
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 223
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToDisplay(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onModuleLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displaying:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-eq v0, v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v0, "LeadboltAdAdapter"

    const-string v1, "LOADED"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 179
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    sget-object v1, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Displayed:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    if-ne v0, v1, :cond_0

    .line 136
    const-string v0, "LeadboltAdAdapter"

    const-string v1, "onResume called while ad is still displaying. Forcing cleanup of Leadbolt."

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->destroyModule()V

    .line 138
    sget-object v0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->Idle:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
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
    .line 70
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->isVideo:Z

    if-eqz v1, :cond_2

    const-string v1, "video"

    :goto_0
    iput-object v1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->leadboltLocation:Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->activity:Landroid/app/Activity;

    .line 75
    :cond_0
    if-nez p2, :cond_3

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 70
    :cond_2
    const-string v1, "inapp"

    goto :goto_0

    .line 79
    :cond_3
    const-string v1, "leadbolt_api_key"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "apiKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 81
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->apiKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x4
        0x1
        0x1
    .end array-data
.end method

.method public transitionToState(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)V
    .locals 3
    .param p1, "targetState"    # Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->canTransitionTo(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "LeadboltAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider Error trying to transition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    invoke-virtual {v2}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;->state:Lcom/fusepowered/ads/adapters/LeadboltAdAdapter$State;

    .line 66
    return-void
.end method
