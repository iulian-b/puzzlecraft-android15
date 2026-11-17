.class Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$3;
.super Ljava/lang/Object;
.source "MraidBannerJavascriptInterfaceListener.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/OnCloseListener;


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


# direct methods
.method constructor <init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$3;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$3;->this$0:Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeResizedBanner()V

    .line 260
    return-void
.end method
