.class Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;
.super Ljava/lang/Object;
.source "MraidBannerJavascriptInterfaceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->resize(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

.field final synthetic val$buttonParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$newCloseButton:Z

.field final synthetic val$params:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$parentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Z)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    iput-object p2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$parentLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p4, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$buttonParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean p5, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$newCloseButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$parentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$000(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/CloseButton;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$buttonParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-boolean v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$newCloseButton:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->val$parentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$000(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/CloseButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->access$100(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->RESIZED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 281
    return-void
.end method
