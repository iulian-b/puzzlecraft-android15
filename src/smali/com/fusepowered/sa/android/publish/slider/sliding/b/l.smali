.class public Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$f;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$e;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$d;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$c;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$b;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$a;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;
    }
.end annotation


# static fields
.field static final a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$f;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$f;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$e;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$e;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$d;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$c;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$c;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$b;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$b;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$a;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$a;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;->a(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;->a(Landroid/view/View;Lcom/fusepowered/sa/android/publish/slider/sliding/b/a;)V

    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;

    invoke-interface {v0, p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/l$g;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
