.class final Lcom/android/internal/util/cm/palette/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    .param p2, "rhs"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    .prologue
    .line 445
    invoke-virtual {p2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$1;->compare(Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;)I

    move-result v0

    return v0
.end method
