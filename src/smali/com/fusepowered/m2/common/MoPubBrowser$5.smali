.class Lcom/fusepowered/m2/common/MoPubBrowser$5;
.super Ljava/lang/Object;
.source "MoPubBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/common/M2Browser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/M2Browser;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/common/M2Browser;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fusepowered/m2/common/MoPubBrowser$5;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fusepowered/m2/common/MoPubBrowser$5;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/M2Browser;->finish()V

    .line 154
    return-void
.end method
