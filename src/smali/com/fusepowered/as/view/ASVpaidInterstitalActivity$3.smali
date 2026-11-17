.class Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;
.super Ljava/lang/Object;
.source "ASVpaidInterstitalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->registerEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 132
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$3;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->finish()V

    .line 133
    return-void
.end method
