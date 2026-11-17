.class Lcom/chillingo/libterms/ui/InfoDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/libterms/ui/InfoDialog;->setPositiveButton(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chillingo/libterms/ui/InfoDialog;


# direct methods
.method constructor <init>(Lcom/chillingo/libterms/ui/InfoDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chillingo/libterms/ui/InfoDialog$1;->a:Lcom/chillingo/libterms/ui/InfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/chillingo/libterms/ui/InfoDialog$1;->a:Lcom/chillingo/libterms/ui/InfoDialog;

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/InfoDialog;->dismiss()V

    .line 86
    return-void
.end method
