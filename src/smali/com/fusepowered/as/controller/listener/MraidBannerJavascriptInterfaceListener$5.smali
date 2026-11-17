.class Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;
.super Ljava/lang/Object;
.source "MraidBannerJavascriptInterfaceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeResizedBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

.field final synthetic val$params:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$parentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    iput-object p2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->val$parentLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->val$parentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->val$parentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$000(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/CloseButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v0, v2}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$002(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Lcom/fusepowered/as/view/component/CloseButton;)Lcom/fusepowered/as/view/component/CloseButton;

    .line 305
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setOnCloseListener(Lcom/fusepowered/as/controller/listener/OnCloseListener;)V

    .line 307
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$100(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->DEFAULT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 308
    return-void
.end method
