.class Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener$1;
.super Landroid/view/OrientationEventListener;
.source "MraidInterstitialJavascriptInterfaceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/OnCloseListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener$1;->this$0:Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener$1;->this$0:Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->onSizeChange()V

    return-void
.end method
