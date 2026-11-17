.class Lcom/fusepowered/as/controller/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/FetchPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/controller/AdManager;
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
    .line 48
    iput-object p1, p0, Lcom/fusepowered/as/controller/AdManager$1;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlacementError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement level error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$1;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$300(Lcom/fusepowered/as/controller/AdManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1, p1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onPlacementResult(Lcom/fusepowered/as/model/Placement;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$1;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$000(Lcom/fusepowered/as/controller/AdManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Placement constructed successfully"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$1;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0, p1}, Lcom/fusepowered/as/controller/AdManager;->access$102(Lcom/fusepowered/as/controller/AdManager;Lcom/fusepowered/as/model/Placement;)Lcom/fusepowered/as/model/Placement;

    .line 54
    iget-object v0, p0, Lcom/fusepowered/as/controller/AdManager$1;->this$0:Lcom/fusepowered/as/controller/AdManager;

    invoke-static {v0}, Lcom/fusepowered/as/controller/AdManager;->access$200(Lcom/fusepowered/as/controller/AdManager;)V

    .line 55
    return-void
.end method
