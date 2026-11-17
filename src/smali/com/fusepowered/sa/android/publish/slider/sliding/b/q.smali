.class public Lcom/fusepowered/sa/android/publish/slider/sliding/b/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$b;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$a;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$d;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;
    }
.end annotation


# static fields
.field static final a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$b;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$b;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$a;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$a;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$d;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/q$c;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
