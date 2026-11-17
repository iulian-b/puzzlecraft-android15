.class Lcom/fusepowered/m2/mraid/MraidBridge$2;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/ViewGestureDetector$UserClickListener;


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
    .line 151
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidBridge$2;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetUserClick()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$2;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$102(Lcom/fusepowered/m2/mraid/MraidBridge;Z)Z

    .line 160
    return-void
.end method

.method public onUserClick()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$2;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$102(Lcom/fusepowered/m2/mraid/MraidBridge;Z)Z

    .line 155
    return-void
.end method

.method public wasClicked()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$2;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidBridge;->access$100(Lcom/fusepowered/m2/mraid/MraidBridge;)Z

    move-result v0

    return v0
.end method
