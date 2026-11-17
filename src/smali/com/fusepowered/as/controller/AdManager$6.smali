.class Lcom/fusepowered/as/controller/AdManager$6;
.super Ljava/util/TimerTask;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/AdManager;->executePlacement()V
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
    .line 244
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$6;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$6;->this$0:Lcom/fusepowered/as/controller/AdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/AdManager;->access$1202(Lcom/fusepowered/as/controller/AdManager;Z)Z

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer has run out!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$6;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$1400(Lcom/fusepowered/as/controller/AdManager;)Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/controller/AdManager$6;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v1}, Lcom/fusepowered/as/controller/AdManager;->access$1300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/FetchPlacementListener;->onPlacementError(Ljava/lang/String;)V

    .line 250
    return-void
.end method
