.class Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1$1;
.super Ljava/lang/Object;
.source "ASVpaidInterstitalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->onShowClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1$1;->this$1:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1$1;->this$1:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(I)V

    .line 84
    return-void
.end method
