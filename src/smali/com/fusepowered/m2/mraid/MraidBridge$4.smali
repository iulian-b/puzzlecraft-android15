.class Lcom/fusepowered/m2/mraid/MraidBridge$4;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Lcom/fusepowered/m2/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidBridge;->attachView(Lcom/fusepowered/m2/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mraid/MraidBridge;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidBridge$4;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$4;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$000(Lcom/fusepowered/m2/mraid/MraidBridge;)Lcom/fusepowered/m2/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$4;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$000(Lcom/fusepowered/m2/mraid/MraidBridge;)Lcom/fusepowered/m2/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mraid/MraidBridge$MraidBridgeListener;->onVisibilityChanged(Z)V

    .line 191
    :cond_0
    return-void
.end method
