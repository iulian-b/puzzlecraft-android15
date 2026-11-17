.class public Lcom/fusepowered/ads/adapters/LeadBoltListener;
.super Ljava/lang/Object;
.source "LeadBoltListener.java"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LeadBoltListener"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/apptracker/android/listener/AppModuleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/adapters/LeadBoltListener;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/LeadBoltListener;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;)V
    .locals 1
    .param p1, "leadboltAdAdapter"    # Lcom/fusepowered/ads/adapters/LeadboltAdAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public onMediaFinished(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 52
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/listener/AppModuleListener;

    .line 53
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    invoke-interface {v1, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onMediaFinished(Z)V

    goto :goto_0

    .line 55
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method

.method public onModuleCached(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "LeadBoltListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACHED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;-><init>(Lcom/fusepowered/ads/adapters/LeadBoltListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method public onModuleClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/listener/AppModuleListener;

    .line 67
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    invoke-interface {v1, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method

.method public onModuleClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/listener/AppModuleListener;

    .line 60
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    invoke-interface {v1, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleClosed(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method

.method public onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "b"    # Z

    .prologue
    .line 73
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/listener/AppModuleListener;

    .line 74
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method

.method public onModuleLoaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/listener/AppModuleListener;

    .line 46
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    invoke-interface {v1, p1}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method
