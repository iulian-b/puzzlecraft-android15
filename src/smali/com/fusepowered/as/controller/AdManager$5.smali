.class Lcom/fusepowered/as/controller/AdManager$5;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/AdManager;-><init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/AdManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/AdManager;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/AdManager;->access$902(Lcom/fusepowered/as/controller/AdManager;Z)Z

    .line 224
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$1000(Lcom/fusepowered/as/controller/AdManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad has not yet begun to load so execute placement"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/AdManager;->executePlacement()V

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$1100(Lcom/fusepowered/as/controller/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad has fully loaded so call show ad"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$5;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$800(Lcom/fusepowered/as/controller/AdManager;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad is still loading, just set preload to false"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
