.class Lcom/fusepowered/l1/AdBrowserActivity$3;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fusepowered/l1/AdBrowserActivity$3;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$3;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->finish()V

    .line 158
    return-void
.end method
