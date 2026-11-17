.class Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$1;
.super Landroid/view/OrientationEventListener;
.source "MraidBannerJavascriptInterfaceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;-><init>(Landroid/content/Context;Ljava/util/Properties;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$1;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$1;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->onSizeChange()V

    return-void
.end method
