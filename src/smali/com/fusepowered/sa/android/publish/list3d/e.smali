.class public final enum Lcom/fusepowered/sa/android/publish/list3d/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/list3d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fusepowered/sa/android/publish/list3d/e;

.field private static final synthetic b:[Lcom/fusepowered/sa/android/publish/list3d/e;


# instance fields
.field private imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private queryPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/list3d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/list3d/e;

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fusepowered/sa/android/publish/list3d/e;->b:[Lcom/fusepowered/sa/android/publish/list3d/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/a;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/list3d/a;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/list3d/e;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/e;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/list3d/e;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/list3d/e;->b:[Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/list3d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/list3d/e;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/sa/android/publish/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->listItems:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/fusepowered/sa/android/publish/list3d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/fusepowered/sa/android/publish/list3d/f;Z)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/list3d/a;->a(Lcom/fusepowered/sa/android/publish/list3d/f;Z)V

    return-void
.end method

.method public a(Lcom/fusepowered/sa/android/publish/model/AdDetails;)V
    .locals 4

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-direct {v0, p1}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;-><init>(Lcom/fusepowered/sa/android/publish/model/AdDetails;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->imagesManager:Lcom/fusepowered/sa/android/publish/list3d/a;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/fusepowered/sa/android/publish/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/e;->listItems:Ljava/util/List;

    return-object v0
.end method
