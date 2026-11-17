.class Lcom/fusepowered/m2/mraid/MraidBridge$6;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidBridge;->runCommand(Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

.field final synthetic val$command:Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mraid/MraidBridge;Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidBridge$6;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    iput-object p2, p0, Lcom/fusepowered/m2/mraid/MraidBridge$6;->val$command:Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/fusepowered/m2/mraid/MraidCommandException;)V
    .locals 3
    .param p1, "exception"    # Lcom/fusepowered/m2/mraid/MraidCommandException;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$6;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidBridge$6;->val$command:Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;

    invoke-virtual {p1}, Lcom/fusepowered/m2/mraid/MraidCommandException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$300(Lcom/fusepowered/m2/mraid/MraidBridge;Lcom/fusepowered/m2/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    .line 438
    return-void
.end method
