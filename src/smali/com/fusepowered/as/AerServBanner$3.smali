.class Lcom/fusepowered/as/AerServBanner$3;
.super Ljava/lang/Object;
.source "AerServBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/AerServBanner;->configure(Lcom/fusepowered/as/AerServConfig;)Lcom/fusepowered/as/AerServBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServBanner;

.field final synthetic val$config:Lcom/fusepowered/as/AerServConfig;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServBanner;Lcom/fusepowered/as/AerServConfig;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fusepowered/as/AerServBanner$3;->this$0:Lcom/fusepowered/as/AerServBanner;

    iput-object p2, p0, Lcom/fusepowered/as/AerServBanner$3;->val$config:Lcom/fusepowered/as/AerServConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 83
    new-instance v0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;

    iget-object v1, p0, Lcom/fusepowered/as/AerServBanner$3;->val$config:Lcom/fusepowered/as/AerServConfig;

    invoke-static {}, Lcom/fusepowered/as/AerServBanner;->access$200()Lcom/fusepowered/as/AerServAdType;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/as/AerServBanner$3;->this$0:Lcom/fusepowered/as/AerServBanner;

    invoke-static {v3}, Lcom/fusepowered/as/AerServBanner;->access$300(Lcom/fusepowered/as/AerServBanner;)Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/as/AerServBanner$3;->this$0:Lcom/fusepowered/as/AerServBanner;

    invoke-static {v4}, Lcom/fusepowered/as/AerServBanner;->access$400(Lcom/fusepowered/as/AerServBanner;)Lcom/fusepowered/as/controller/listener/SaveShowListener;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/as/AerServBanner$3;->this$0:Lcom/fusepowered/as/AerServBanner;

    iget-object v5, v5, Lcom/fusepowered/as/AerServBanner;->viewId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;-><init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->execute()V

    .line 84
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 85
    return-void
.end method
