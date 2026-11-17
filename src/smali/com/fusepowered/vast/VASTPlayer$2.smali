.class Lcom/fusepowered/vast/VASTPlayer$2;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/VASTPlayer;->loadVastResponseViaXML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/VASTPlayer;

.field final synthetic val$xmlData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/VASTPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    iput-object p2, p0, Lcom/fusepowered/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 144
    new-instance v1, Lcom/fusepowered/vast/util/DefaultMediaPicker;

    iget-object v3, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {v3}, Lcom/fusepowered/vast/VASTPlayer;->access$100(Lcom/fusepowered/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/fusepowered/vast/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "mediaPicker":Lcom/fusepowered/vast/processor/VASTMediaPicker;
    new-instance v2, Lcom/fusepowered/vast/processor/VASTProcessor;

    iget-object v3, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-direct {v2, v1, v3}, Lcom/fusepowered/vast/processor/VASTProcessor;-><init>(Lcom/fusepowered/vast/processor/VASTMediaPicker;Lcom/fusepowered/vast/VASTPlayer;)V

    .line 146
    .local v2, "processor":Lcom/fusepowered/vast/processor/VASTProcessor;
    iget-object v3, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {v3}, Lcom/fusepowered/vast/VASTPlayer;->access$100(Lcom/fusepowered/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {v5}, Lcom/fusepowered/vast/VASTPlayer;->access$200(Lcom/fusepowered/vast/VASTPlayer;)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/fusepowered/vast/processor/VASTProcessor;->process(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 147
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 148
    iget-object v3, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-virtual {v2}, Lcom/fusepowered/vast/processor/VASTProcessor;->getModel()Lcom/fusepowered/vast/model/VASTModel;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusepowered/vast/VASTPlayer;->access$302(Lcom/fusepowered/vast/VASTPlayer;Lcom/fusepowered/vast/model/VASTModel;)Lcom/fusepowered/vast/model/VASTModel;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/vast/VASTPlayer$2;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    invoke-static {v3, v0}, Lcom/fusepowered/vast/VASTPlayer;->access$000(Lcom/fusepowered/vast/VASTPlayer;I)V

    goto :goto_0
.end method
