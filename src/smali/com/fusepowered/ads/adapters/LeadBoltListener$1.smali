.class Lcom/fusepowered/ads/adapters/LeadBoltListener$1;
.super Ljava/lang/Object;
.source "LeadBoltListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/LeadBoltListener;->onModuleCached(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/LeadBoltListener;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/LeadBoltListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;->this$0:Lcom/fusepowered/ads/adapters/LeadBoltListener;

    iput-object p2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;->this$0:Lcom/fusepowered/ads/adapters/LeadBoltListener;

    invoke-static {v2}, Lcom/fusepowered/ads/adapters/LeadBoltListener;->access$000(Lcom/fusepowered/ads/adapters/LeadBoltListener;)Ljava/util/Set;

    move-result-object v2

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

    .line 37
    .local v1, "listener":Lcom/apptracker/android/listener/AppModuleListener;
    iget-object v2, p0, Lcom/fusepowered/ads/adapters/LeadBoltListener$1;->val$s:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleCached(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .end local v1    # "listener":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_0
    return-void
.end method
